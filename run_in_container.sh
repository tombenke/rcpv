#!/bin/bash

export WEBSERVER_PORT=3002

docker run -it \
    --net=host \
    --env WEBSERVER_PORT="$WEBSERVER_PORT" \
    --name=rcpv \
    --rm \
    tombenke/rcpv:latest
