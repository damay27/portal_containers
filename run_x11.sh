#/bin/bash

source ./run.sh

IMAGE=$1
MAP_DIR=$2
EXTRA_ARGS="--env=\"DISPLAY\" --net=host -v ${HOME}/.Xauthority:/root/.Xauthority"

if [ -z $MAP_DIR ]
then
	MAP_DIR=.
fi

run $IMAGE $MAP_DIR $EXTRA_ARGS
