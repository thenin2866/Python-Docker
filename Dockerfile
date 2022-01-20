# syntax=docker/dockerfile:1

FROM python:3.10.2-slim-buster

WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
