FROM python:3-alpine

RUN apk add gcc libc-dev libffi-dev rust

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY gardena2mqtt.py .

ENTRYPOINT ["python", "/app/gardena2mqtt.py"]