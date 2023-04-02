FROM node:13.12.0-alpine

WORKDIR /app

RUN chow -R node /app

USER root

COPY package.json

RUN nmp install

COPY . ./

EXPOSE 8080

CMD ["node", "server.js"]
