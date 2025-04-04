FROM node:23-alpine

RUN apk add --no-cache python3 alpine-sdk

WORKDIR /app
COPY ./ /app

RUN npm install

EXPOSE 9000
CMD [ "node", "src/cobalt" ]
