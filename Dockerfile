FROM debian:latest

RUN apt-get update -y && apt-get install nodejs npm unzip zip curl -y

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

WORKDIR /var/www/web/verdaccio-repo

COPY config.yaml .

RUN npm i verdaccio