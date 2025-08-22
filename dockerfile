FROM node:24-slim

WORKDIR /home/node/app

COPY . . 

RUN npm install

CMD node index.js