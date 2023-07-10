#/bin/bash

BUILD_PATH=$1
TAG=$(basename $BUILD_PATH)

docker buildx build --tag $TAG $BUILD_PATH
