FROM python:3.6-slim

ENV RASA_HOME=/app

RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends build-essential git-core \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
WORKDIR ${RASA_HOME}
COPY requirements.txt .

RUN pip install -r requirements.txt
