#! /bin/bash

IMAGE_NAME=$1

echo 'Building local image...'
sleep 1

docker build --rm \
    -t ${IMAGE_NAME} \
    .

echo 'Installing project...'
sleep 1

docker run -it --rm \
    -v ${PWD}:/var/www/html/app \
    ${IMAGE_NAME} \
    /bin/sh -c "npm install"