FROM python:3.10

WORKDIR /app

COPY . .

RUN apt-get -y update && \
    apt-get install -y build-essential

RUN pip install --upgrade pip setuptools wheel

RUN pip install -r requirements.txt