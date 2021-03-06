FROM node:10-slim
MAINTAINER Tim Shelburne <shelburt02@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json /usr/src/app/
RUN npm i

COPY . /usr/src/app

RUN npm run build.server
CMD node build/server.js