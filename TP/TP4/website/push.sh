#! /usr/bin/env bash

NOM=website
VERSION=0.0.3
REGISTRY="10.54.56.39:5000"

TAG=$REGISTRY/$NOM:$VERSION

INFO="$VERSION build `date`"
echo $INFO

docker build --rm -t $TAG --build-arg VERSION="$INFO" .
docker push $TAG
