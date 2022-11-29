
from pydantic import BaseModel
from typing import List

class MainModel(BaseModel):
  aqi: int

class ComponentModel(BaseModel):
  co: float
  no: float
  no2: float
  o3: float
  so2: float
  pm2_5: float
  pm10: float
  nh3: float

class DataModel(BaseModel):
  main: MainModel
  components: ComponentModel
  dt: int

class PredictionModel(BaseModel):
  list: List[DataModel]

