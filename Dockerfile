FROM alpine:3.8 as develop-stage
RUN apk add --update nodejs npm && \
    npm install -g @vue/cli
RUN mkdir -p /var/www/html/app
WORKDIR /var/www/html/app