FROM nunenuh/puml:python3.7-prod

ENV PYTHONUNBUFFERED 1

EXPOSE 8080
WORKDIR /app

RUN apt-get update && apt-get install git -y && \
    apt-get install libgl1 libgl1-mesa-glx libglib2.0-0 libsm6 libxrender1 libxext6 -y 

COPY . ./
ENV PYTHONPATH app

COPY ./require/fastapi.txt /tmp/fastapi.txt
COPY ./require/ml.txt /tmp/ml.txt
COPY ./require/extract.txt /tmp/extract.txt

RUN pip install --upgrade pip
RUN pip install -r /tmp/fastapi.txt 
RUN pip install -r /tmp/ml.txt
RUN pip install -r /tmp/extract.txt

# RUN pip install loguru==0.4.0 joblib==0.15.1

RUN chmod +x scripts/post-run.sh
# RUN ./scripts/post-run.sh

# Use the ping endpoint as a healthcheck,
# so Docker knows if the API is still running ok or needs to be restarted
HEALTHCHECK --interval=21s --timeout=3s --start-period=10s CMD curl --fail http://localhost:8080/ping || exit 1

CMD ["python", "app/main.py"]
# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
# CMD ["/bin/bash", "/app/scripts/post-run.sh"]
