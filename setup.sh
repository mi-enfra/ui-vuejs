#! /bin/bash

IMAGE_NAME="marvinenf/vuejs-template:dev-only"

bash scripts/setup-project-env.sh $IMAGE_NAME
bash scripts/build-dev-image.sh $IMAGE_NAME

echo "Project setup complete."