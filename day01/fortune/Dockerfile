# node 21
FROM node:21

## INSTALL
# create /app and cd into /app
WORKDIR /app

# inside /app

RUN apt update && apt install -y curl

COPY package.json .
COPY package-lock.json .
COPY main.js .
COPY public public
COPY views views

# install dependencies
RUN npm ci

## RUN

ENV APP_PORT=3000

EXPOSE ${APP_PORT}

HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
   CMD curl -s http://localhost:${APP_PORT}/health || exit 1

ENTRYPOINT node main.js 