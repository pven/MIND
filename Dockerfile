# creator: pven, supported by Claude
# datum: 28-MAR-2026
# versie: v1.0
# changelog:
#   v1.0 - Fork van Casvt/MIND met cookie-gebaseerde sessie-opslag

# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
STOPSIGNAL SIGINT

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8080

CMD [ "python3", "/app/MIND.py" ]
