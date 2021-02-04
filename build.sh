#!/bin/bash
set -x

VERSION=0.0.4
IMAGE_NAME=simple-node-api-server
REGISTRY_PATH=gcr.io/waylar-gateway
docker build -t ${REGISTRY_PATH}/${IMAGE_NAME}:${VERSION} -f Dockerfile .
docker push ${REGISTRY_PATH}/${IMAGE_NAME}:${VERSION}
docker rmi ${REGISTRY_PATH}/${IMAGE_NAME}:${VERSION}
