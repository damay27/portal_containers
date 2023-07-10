#/bin/bash

function run() {
	IMAGE=$1
	MAP_DIR=$2
	EXTRA_ARGS=$3

	if [ -z $MAP_DIR ]
	then
		MAP_DIR=.
	fi

	docker run --rm -it -v $MAP_DIR:/portal ${EXTRA_ARGS} $IMAGE
}
