from fastapi import FastAPI, Path
from keras.models import load_model
import numpy as np
import joblib
from numpy import concatenate
import requests
import time
from constant import *
from interfaces.predictionModel import *

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
  scaler = joblib.load(f'model\station{id}\pm2_5\scaler.gz')
  transformedData = np.zeros(arr.shape)
  for i in range(arr.shape[1]):
    if len(stationFeatures[id][factor]) == 1:
      dummy_arr = arr[:,i].reshape(-1, 1)
    else:
      dummy_arr = concatenate((np.ones([arr.shape[0], len(stationFeatures[id][factor]) - 1]), arr[:,i].reshape(-1,1)), axis=1)
    transformedData[:, i] = scaler.inverse_transform(dummy_arr)[:, len(stationFeatures[id][factor]) - 1]
  return transformedData

@app.get("/")
def getUser():
  return {"username": "gaubaccuc"}

@app.get("/predict/{stationId}", status_code=200)
def getPrediction(stationId: int):
  raw = getAqiData(stationId)
  results = {}
  scaler = joblib.load(f'model\station{stationId}\pm2_5\scaler.gz')
  for factor in pollutantFactorList:
    inputData = [[data['components'][feature] for data in raw] for feature in stationFeatures[stationId][factor]]
    inputData = scaler.transform(np.array(inputData).T)
    aqiData = np.array(inputData.T).T.reshape(1, len(stationFeatures[stationId][factor]), lag)
    if choosenModel[stationId][factor] in ['cnn_lstm_model', 'lstm_lstm_model']:
      aqiData = np.array(inputData.T).T.reshape(1, lag, len(stationFeatures[stationId][factor]))
    model = load_model(f'model\station{stationId}\{factor}\{choosenModel[stationId][factor]}')
    results[factor] = convertTransform(model.predict(aqiData), stationId, factor).reshape(-1)
  print(results)
  return "ok"
