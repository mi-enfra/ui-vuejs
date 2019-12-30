FROM alpine:3.8 as develop-stage
RUN echo 'Installing Node and NPM...' && \
    apk add --update nodejs npm
RUN echo 'Installing Vue.js...' && \
    npm install -g @vue/cli
RUN mkdir -p /var/www/html/app
WORKDIR /var/www/html/app