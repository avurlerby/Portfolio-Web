FROM node:alpine

WORKDIR /app

COPY ./Server .

RUN npm install -g latest

<<<<<<< HEAD
CMD ["npm", "start"]
=======
COPY . .

CMD ["npm", "start"]
>>>>>>> 6dc56ef5fef02d3b286e6ec494501d457be2ca86
