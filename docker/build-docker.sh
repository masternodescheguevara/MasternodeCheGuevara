#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-masternodescheguevarapay/masternodescheguevarad-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/masternodescheguevarad docker/bin/
cp $BUILD_DIR/src/masternodescheguevara-cli docker/bin/
cp $BUILD_DIR/src/masternodescheguevara-tx docker/bin/
strip docker/bin/masternodescheguevarad
strip docker/bin/masternodescheguevara-cli
strip docker/bin/masternodescheguevara-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
