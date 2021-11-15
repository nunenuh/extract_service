from pydantic import BaseModel
from typing import Optional, List, Any, Dict


class MachineLearningResponse(BaseModel):
    prediction: Dict
    time: str
