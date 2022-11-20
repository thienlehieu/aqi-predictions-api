from fastapi import FastAPI, Path
from keras.models import Sequential, load_model
import numpy as np
from pydantic import BaseModel
import joblib
from numpy import concatenate

app = FastAPI()
scaler = joblib.load('scaler.gz')

class AqiData(BaseModel):
  data: list

class PredictionResults(BaseModel):
  forecast: str

students = {
  1: {
    "name": "nguyen",
    "age": 21
  }
}

features = ['TSPug/m3', 'PM2.5ug/m3']

def convertTransform(arr):
  transformed_train_predict = np.zeros(arr.shape)
  for i in range(arr.shape[1]):
    if len(features) == 1:
      dummy_arr = arr[:,i].reshape(-1, 1)
    else:
      dummy_arr = concatenate((np.ones([arr.shape[0], len(features) - 1]), arr[:,i].reshape(-1,1)), axis=1)
    transformed_train_predict[:, i] = scaler.inverse_transform(dummy_arr)[:, len(features) - 1]
  return transformed_train_predict


@app.get("/")
def getUser():
  return {"username": "gaubaccuc"}

@app.get("/student/{studentId}")
def getStudent(studentId: int = Path("lolll", description="get student with studentId")):
  return students[studentId]

@app.get("/student")
def getStudent():
  return "lol"

@app.post("/predict", response_model=PredictionResults, status_code=200)
def getPrediction(payload: AqiData):
  aqiData = np.array(payload.data).T.reshape(1, 24, 2)
  saveModels = {}
  saveModels['cnn_lstm'] = load_model('cnn_lstm_model')
  results = saveModels['cnn_lstm'].predict(aqiData)
  res: PredictionResults = {"forecast": f'{convertTransform(results).reshape(-1)}'}
  return res
