FROM alpine:3.8 as develop-stage
RUN apk add --update nodejs npm
RUN npm install -g --loglevel verbose @vue/cli
RUN mkdir -p /var/www/html/app
WORKDIR /var/www/html/app