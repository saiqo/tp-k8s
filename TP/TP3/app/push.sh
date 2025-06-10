#! /usr/bin/env bash

NOM=test
VERSION=0.0.1
REGISTRY="10.54.56.39:5000"

TAG=$REGISTRY/$NOM:$VERSION

INFO="$VERSION build `date`"
echo $INFO

docker build --rm -t $TAG --build-arg VERSION="$INFO" .
docker push $TAG