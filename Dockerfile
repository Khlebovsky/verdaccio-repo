FROM debian:latest

RUN apt-get update -y && apt-get install nodejs npm unzip zip curl -y

WORKDIR /var/www/web/verdaccio-repo

COPY config.yaml .

RUN npm i verdaccio