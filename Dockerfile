FROM node:alpine3.15

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8000

RUN pwd

CMD [ "node", "server.js" ]
