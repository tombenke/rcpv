#!/bin/bash

export easer=easer
export workdir=`pwd`
#export WEBSERVER_USERS="${workdir}/dist/users.yml"
export WEBSERVER_PORT=3002
export WEBSERVER_USE_PDMS="true"
export PDMS_NATS_URI="nats://demo.nats.io:4222"
#export PDMS_NATS_URI="nats://localhost:4222"

export WEBSERVER_RESTAPIPATH="${workdir}/rest-api/swagger.json"

# Websocket topics related config parameters
export WSSERVER_FORWARD_TOPICS="true"
export WSSERVER_FORWARDER_EVENT="message"

# Standalone config:
#export WSPDMSGW_INBOUND_TOPICS="speak,hear,multimedia,presentation"
#export WSPDMSGW_OUTBOUND_TOPICS="hear,speakStatus"

# robop config:
export WSPDMSGW_INBOUND_TOPICS="multimedia,presentation"
export WSPDMSGW_OUTBOUND_TOPICS=""

$easer -d -l debug
