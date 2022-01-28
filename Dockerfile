FROM node:alpine

WORKDIR /app

COPY ./Server .

RUN npm install -g npm@8.1.0

CMD ["npm", "start"]