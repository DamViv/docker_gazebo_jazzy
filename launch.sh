#!/bin/bash

ABSOLUTE_DOCKER=`pwd`
CONTAINER_NAME=cortex_container     #nom du conteneur

mkdir ~/.ccache || echo ccache folder already exists

# nom de l'image docker
NAME=ros-jazzy-img

# Cette opération consiste à vérifier si le conteneur est en cours d'exécution et, dans l'affirmative, à le supprimer.
echo Stopping previous $CONTAINER_NAME
docker stop $CONTAINER_NAME || echo Container was not running
docker rm $CONTAINER_NAME || echo Image was not created

# build and launch
docker build -f Dockerfile -t $NAME .

# Relax X server permissions so that local X connections work; this is necessary
# when running under XWayland
xhost +local:root

# Launch the docker using the docker-compose.yml config file
docker compose run --remove-orphans jazzy-image  

