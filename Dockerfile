FROM node:alpine

WORKDIR /app

COPY package.json ./

RUN npm install -g latest

COPY . .

CMD ["npm", "start"]
