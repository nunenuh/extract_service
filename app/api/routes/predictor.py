from typing import Any, List, Text, Dict
from fastapi import Body

from pydantic.main import BaseModel
from core.errors import PredictException
from fastapi import APIRouter, HTTPException
from loguru import logger
from models.prediction import MachineLearningResponse
from services.predict import MachineLearningModelHandler as model

router = APIRouter()


@router.post("/predict", response_model=MachineLearningResponse, name="predict:extract-data")
async def predict(data: Any = Body(..., embed=True)):
    if not data:
        raise HTTPException(status_code=404, detail=f"'data_input' argument invalid!")
    try:
        result = model.predict(data)
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Exception: {e}")

    return MachineLearningResponse(prediction=result['prediction'], time=result['time'])