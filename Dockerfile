FROM python:3.7-alpine
LABEL MAINTAINER='Ingeniería de Software 1'

ENV PYTHONNUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user