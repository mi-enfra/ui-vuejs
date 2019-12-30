#! /bin/bash

BASE_URL="vuejs.example.com"

create_env () {
    if ! [ -f ".env" ]
    then
        cp "env.example" ".env"
        sed -i -e "s/\(PROJECT_URL=$BASE_URL\)/PROJECT_URL=$1/g" ".env"
        echo "Created .env file."
    else
        echo ".env already exists, skipping..."
    fi
}

# Will only run if .env file is not yet created
# -OR- site.conf contains $BASE_URL as server_name
if ! [ -f ".env" ]
then
    echo "Project URL (e.g. $BASE_URL):"
    read url
    create_env $url
    sleep 1
    echo "Project setup. Terminating..."
    sleep 1
else
    echo "Project already setup. Terminating..."
    sleep 1
fi