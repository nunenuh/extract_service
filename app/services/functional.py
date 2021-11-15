from services.predict import MachineLearningModelHandler as model
import joblib


def predict(data):
    return model.predict(data)