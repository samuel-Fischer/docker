FROM node:16.0-alpine

WORKDIR /usr/src/app

COPY package*.json .

RUN npm install

COPY . .


CMD npx nodemon app.js
