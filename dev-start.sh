docker run -it --rm \
    -v ${PWD}:/var/www/html/app \
    --name ui-vuejs \
    --env VIRTUAL_HOST=ui-vuejs.docker-experiment.com \
    marvinenf/vuejs-dev