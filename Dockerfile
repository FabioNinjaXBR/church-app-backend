FROM python:3.13.1-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

CMD uvicorn main:app --port=$PORT --host=0.0.0.0
