#! /bin/bash

echo 'Building local image...'
sleep 1

docker build --rm \
    -t marvinenf/vuejs-dev:dev-only \
    .

echo 'Installing project...'
sleep 1

docker run -it --rm \
    -v ${PWD}:/var/www/html/app \
    marvinenf/vuejs-dev \
    /bin/sh -c "npm install"