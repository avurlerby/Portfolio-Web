FROM node:lts-alpine
WORKDIR /usr/src/app
COPY ./server .
ENV NODE_ENV='dev'
ENV PORT=8080
RUN npm install
CMD [ "npm", "run", "serve" ]
