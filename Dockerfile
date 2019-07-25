FROM alpine:3.10

RUN apk add --no-cache nodejs
RUN apk add --no-cache npm
RUN apk add --no-cache git

RUN npm install -g xml2js

# trust the SEITENBAU root CA (as it signs the SEITENBAU-Bitbucket cert, from which we need to pull the repo)
COPY seitenbau_root_ca.crt /root/seitenbau_root_ca.crt
RUN git config --global http.sslCAInfo /root/seitenbau_root_ca.crt
