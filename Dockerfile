FROM node:lts-alpine
WORKDIR /usr/src/app
COPY ./Server .
ENV NODE_ENV='dev'
ENV PORT=8080
RUN npm install
CMD [ "npm", "run", "serve" ]
