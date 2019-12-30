#! /bin/bash

IMAGE_NAME="marvinenf/vuejs-dev:dev-only"

bash scripts/dev-setup-env.sh $IMAGE_NAME
bash scripts/dev-build-image.sh $IMAGE_NAME