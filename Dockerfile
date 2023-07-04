FROM node:20.0-alpine

WORKDIR /api

COPY package*.json .

RUN npm install
RUN npm install -g nodemon

COPY . .


CMD npx nodemon app.js
