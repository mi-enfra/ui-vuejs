#! /bin/bash

DIR=$PWD"/dist"

docker run -d --rm \
    -e VIRTUAL_HOST=ui-vuejs.docker-experiment.com \
    -v ${DIR}:/usr/share/nginx/html \
    --name ui-vuejs \
    nginx:alpine

docker run -it --rm \
    -v ${PWD}:/var/www/html/app \
    --name ui-vuejs-dev \
    marvinenf/vuejs-dev