from fastapi import FastAPI, Path
from keras.models import load_model
import numpy as np
import joblib
from numpy import concatenate
import requests
import time
from constant import *
from interfaces.predictionModel import *
from easyesn import BaseESN
import pytz
from datetime import datetime
import uvicorn

app = FastAPI()

def getAqiData(id: int):
  url = "https://api.openweathermap.org/data/2.5/air_pollution/history"
  end = round(time.time())
  start = end - 3600*24
  payload = {"lat": stationCoordinates[id]["lat"], "lon": stationCoordinates[id]["long"]
              , "start": start, "end": end, "appid": "568d5eb951ee4fe191d381a5c97a9816"}
  response = requests.get(url, params=payload)
  return response.json()["list"]

def convertTransform(arr, id, factor):
  scaler = joblib.load(f'model\station{id}\{factor}\scaler.gz')
  transformedData = np.zeros(arr.shape)
  for i in range(arr.shape[1]):
    if len(stationFeatures[id][factor]) == 1:
      dummy_arr = arr[:,i].reshape(-1, 1)
    else:
      dummy_arr = concatenate((np.ones([arr.shape[0], len(stationFeatures[id][factor]) - 1]), arr[:,i].reshape(-1,1)), axis=1)
    transformedData[:, i] = scaler.inverse_transform(dummy_arr)[:, len(stationFeatures[id][factor]) - 1]
  return transformedData

def responseTransform(result):
  res = {'list': [{'components': {}, 'main': {}} for _ in range(0, timeStep)]}
  currentTime = round(time.time())
  tz = pytz.timezone('Asia/Ho_Chi_Minh')
  for factor, predict in result.items():
    for i, val in enumerate(predict):
      if factor == 'pm2_5':
        res['list'][i]['main']['aqi'] = max(round(val, 2), 0)
        res['list'][i]['dt'] = datetime.fromtimestamp(currentTime + 3600*(i+1), tz).strftime("%Y-%m-%dT%H:%M:%SZ")
      res['list'][i]['components'][factor] = max(round(val, 2), 0)
  return res

@app.get("/")
def getUser():
  return {"username": "gaubaccuc"}

@app.get("/predict", response_model=PredictionModel, status_code=200)
def getPrediction(stationId: int):
  raw = getAqiData(stationId)
  results = {}
  for factor in pollutantFactor[stationId]:
    scaler = joblib.load(f'model\station{stationId}\{factor}\scaler.gz')
    inputData = [[data['components'][feature] for data in raw] for feature in stationFeatures[stationId][factor]]
    inputData = scaler.transform(np.array(inputData).T)
    aqiData = np.array(inputData.T).reshape(1, len(stationFeatures[stationId][factor]), lag)
    if choosenModel[stationId][factor] in ['cnn_lstm_model', 'lstm_lstm_model']:
      aqiData = np.array(inputData.T).T.reshape(1, lag, len(stationFeatures[stationId][factor]))

    if choosenModel[stationId][factor] in ['esn_model']:
      model = BaseESN.load(f'model\station{stationId}\{factor}\{choosenModel[stationId][factor]}')
      results[factor] = convertTransform(model.predict(aqiData), stationId, factor).reshape(-1)
    elif choosenModel[stationId][factor] in ['hybrid_model']:
      annModel = load_model(f'model\station{stationId}\{factor}\{"ann_model"}')
      rnnModel = load_model(f'model\station{stationId}\{factor}\{"rnn_model"}')
      cnnLstmModel = load_model(f'model\station{stationId}\{factor}\{"cnn_lstm_model"}')
      lstmLstmModel = load_model(f'model\station{stationId}\{factor}\{"lstm_lstm_model"}')
      endeInput = np.array(inputData.T).T.reshape(1, lag, len(stationFeatures[stationId][factor]))
      hybridInput = np.array([annModel.predict(aqiData).reshape(-1), 
                              rnnModel.predict(aqiData).reshape(-1), 
                              cnnLstmModel.predict(endeInput).reshape(-1), 
                              lstmLstmModel.predict(endeInput).reshape(-1)])
      hybridModel = load_model(f'model\station{stationId}\{factor}\{"hybrid_model"}')
      output = np.array([hybridModel.predict(np.array([data])) for data in hybridInput.T]).reshape(-1)
      results[factor] = convertTransform(np.array([output]), stationId, factor).reshape(-1)
    else:
      model = load_model(f'model\station{stationId}\{factor}\{choosenModel[stationId][factor]}')
      results[factor] = convertTransform(model.predict(aqiData), stationId, factor).reshape(-1)
  print(responseTransform(results))
  return responseTransform(results)
