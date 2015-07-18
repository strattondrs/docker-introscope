#!/bin/sh

sudo=sudo
unamestr=`uname`

if [[ "$unamestr" == 'Darwin' ]]; then
	sudo=''
fi

$sudo docker run -d \
  --name apm-postgres \
  apm-docker-registry.ca.com:5000/apm-postgres
