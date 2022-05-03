
FROM node:lts-alpine
WORKDIR /Server
RUN pwd && cd ./Server && set +x
WORKDIR /app
COPY . .
RUN npm i --save --legacy-peer-deps
EXPOSE ${PORT}
CMD [ "npm", "start" ]