FROM python:3.7.3-stretch
WORKDIR /app
COPY  app.py make_prediction.sh requirements.txt ./
COPY ./model_data ./model_data
# hadolint ignore=DL3013
RUN pip install -r requirements.txt --no-cache-dir
EXPOSE 80
ENTRYPOINT ["python", "/app/app.py"]

