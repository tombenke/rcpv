#!/bin/bash

export EASER_PORT=3002

docker run -it \
    --net=host \
    --env EASER_PORT="$EASER_PORT" \
    --name=rcpv \
    --rm \
    tombenke/rcpv:latest
