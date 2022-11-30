
from pydantic import BaseModel, Field
from typing import List, Optional

class MainModel(BaseModel):
  aqi: Optional[int]

class ComponentModel(BaseModel):
  co: float
  no: Optional[float]
  no2: Optional[float]
  o3: float
  so2: Optional[float]
  pm2_5: float
  pm10: Optional[float]
  nh3: Optional[float]

class DataModel(BaseModel):
  main: Optional[MainModel]
  components: ComponentModel
  dt: Optional[int]

class PredictionModel(BaseModel):
  list: List[DataModel]

