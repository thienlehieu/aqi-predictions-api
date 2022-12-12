
from pydantic import BaseModel, Field
from typing import List, Optional

class MainModel(BaseModel):
  aqi: Optional[int]

class ComponentModel(BaseModel):
  co: Optional[float] = 0
  no2: Optional[float] = 0
  o3: Optional[float] = 0
  pm2_5: Optional[float] = 0
  tsp: Optional[float] = 0

class DataModel(BaseModel):
  main: Optional[MainModel]
  components: ComponentModel
  dt: Optional[str]

class PredictionModel(BaseModel):
  list: List[DataModel]

