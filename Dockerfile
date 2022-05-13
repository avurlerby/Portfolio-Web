FROM node:10 AS ui-build
WORKDIR /usr/src/app
COPY . ./
RUN npm install -g latest  npm run build

FROM node:10 AS server-build
WORKDIR /root/
COPY --from=ui-build ./ ./
COPY package*.json ./
RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
