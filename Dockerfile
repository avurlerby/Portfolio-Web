FROM node:alpine

WORKDIR /app

COPY ./Server .

RUN npm install -g latest

CMD ["npm", "start"]
