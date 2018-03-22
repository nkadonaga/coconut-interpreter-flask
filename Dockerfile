FROM python:3.6

RUN apt-get update
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_CONFIG="development"
EXPOSE 5000