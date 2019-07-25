FROM alpine:3.10

RUN apk add --no-cache nodejs
RUN apk add --no-cache npm
RUN apk add --no-cache git

RUN npm install -g xml2js
