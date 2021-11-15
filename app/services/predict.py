import os

from core.errors import PredictException, ModelLoadException
from core.config import MODEL_PATH, MODEL_NAME
from loguru import logger

from iqradre_extract.predictor import Extractor
import joblib



class MachineLearningModelHandler(object):
    model = None

    @classmethod
    def predict(cls, input, load_wrapper=joblib.load, method="predict"):
        clf = cls.get_model(load_wrapper)
        if hasattr(clf, method):
            return getattr(clf, method)(input)
        raise PredictException(f"'{method}' attribute is missing")

    @classmethod
    def get_model(cls, load_wrapper):
        if cls.model is None and load_wrapper:
            cls.model = cls.load(load_wrapper)
        return cls.model

    @staticmethod
    def load(load_wrapper) -> Extractor:
        model = None
        if MODEL_PATH.endswith("/"):
            path = f"{MODEL_PATH}{MODEL_NAME}"
        else:
            path = f"{MODEL_PATH}/{MODEL_NAME}"
            
        if not os.path.exists(path):
            message = f"Machine learning model at {path} not exists!"
            logger.error(message)
            raise FileNotFoundError(message)
        
        model = Extractor(weight=path)
        
        if not model:
            message = f"Model {model} could not load!"
            logger.error(message)
            raise ModelLoadException(message)

        return model
