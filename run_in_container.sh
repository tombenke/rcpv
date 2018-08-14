#!/bin/bash

export EASER_PORT=3007

docker run -it \
    --env EASER_PORT="$EASER_PORT" \
    -p "$EASER_PORT":"$EASER_PORT" \
    --name=rcpv \
    --rm \
    tombenke/rcpv:latest
