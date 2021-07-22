#!/usr/bin/env bash
# Expect TAG in name:tag format
TAG="$1"

if [ -z "${TAG}" ];then
  TAG='sagurov/spark-client:latest'
fi

echo "TAG: $TAG"

docker build --tag "${TAG}" . 
docker push "${TAG}"
