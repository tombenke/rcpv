#!/bin/bash

export easer=easer-server
export workdir=`pwd`
export EASER_USERS="${workdir}/dist/users.yml"
export EASER_PORT=3006
export EASER_USE_PDMS="true"
#export PDMS_NATS_URI="nats://demo.nats.io:4222"
export PDMS_NATS_URI="nats://localhost:4222"
export EASER_VIEWSPATH="${workdir}/dist/views/"
export EASER_CONTENTPATH_PUBLIC="${workdir}/dist/public/"
export EASER_CONTENTPATH_PRIVATE="${workdir}/dist/private/"
export EASER_RESTAPIPATH="${workdir}/dist/rest-api/services"
export EASER_AUTH_SUCCESS_REDIRECT="/private/"
export EASER_AUTH_FAILURE_REDIRECT="/login"

# Websocket topics related config parameters
export WSSERVER_FORWARD_TOPICS="true"
export WSSERVER_FORWARDER_EVENT="message"
export WSPDMSGW_INBOUND_TOPICS="speak,hear,multimedia,presentation"
export WSPDMSGW_OUTBOUND_TOPICS="hear"
$easer
