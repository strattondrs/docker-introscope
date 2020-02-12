#!/bin/sh

INTROSCOPE_VERSION=10.7.0.45
introscopeinstallfile="EPAgent${INTROSCOPE_VERSION}unix.tar"
errors=false

if [ ! -e $introscopeinstallfile ] ; then
	echo "FATAL: File $introscopeinstallfile does not exist. Please provide this file before building the image"
	errors=true
fi

if [ "$errors" = false ] ; then
	echo "Starting the build"
	docker build -t apm-sample:10.7.0-SP3 .
fi
