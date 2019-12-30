#! /bin/bash

IMAGE_NAME="marvinenf/vuejs-template:production"

echo 'Building production image...'

docker build --rm \
    -t ${IMAGE_NAME} \
    .