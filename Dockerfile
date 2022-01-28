FROM node:lts-alpine
WORKDIR /usr/src/app
COPY ./Server .
ENV NODE_ENV='dev'
ENV PORT=3000
RUN npm ci
EXPOSE 3000
CMD [ "npm", "run", "serve" ]
