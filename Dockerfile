# DEVELOPMENT-ONLY STAGE
FROM alpine:3.8 as develop-stage
RUN apk add --update nodejs npm
RUN npm install -g --loglevel verbose @vue/cli
RUN mkdir -p /var/www/html/app
WORKDIR /var/www/html/app

# BUILD PROJECT
FROM develop-stage as build-stage
COPY . .
RUN npm install && \
    npm run build

# COPY BUILT FILES FOR PRODUCTION
FROM nginx:alpine
COPY --from=build-stage \
    /var/www/html/app/dist \
    /usr/share/nginx/html