FROM python:3.7.1-alpine3.8

RUN apk update && apk add postgresql-dev gcc musl-dev
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

WORKDIR /app
