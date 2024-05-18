FROM python:3.12.3


SHELL ["/bin/bash", "-c"]

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

RUN apt update && apt upgrade

WORKDIR /anal

COPY . .

RUN pip install -r requirements.txt

RUN cd Analizator && python3 manage.py runserver &
