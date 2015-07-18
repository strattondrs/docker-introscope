#!/bin/sh
# This runs a container in default mode. Note that this expects that the sieglstefan/introscope-em already is started

sudo=sudo
unamestr=`uname`

if [[ "$unamestr" == 'Darwin' ]]; then
	sudo=''
fi

$sudo docker run -d \
	-p 8082:8080 \
	--link=apm-em:em \
	--name=apm-webview \
	apm-docker-registry.ca.com:5000/apm-webview
