#!/bin/sh

errors=false
INTROSCOPE_VERSION=10.5.2.24
INTROSCOPE_TAR=introscope${INTROSCOPE_VERSION}linuxAMD64.tar
INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}linuxAMD64.bin

if [ ! -e $INTROSCOPE_BIN ] ; then
	if [ -e ../enterprise-manager/$INTROSCOPE_BIN ]; then
		cp ../enterprise-manager/$INTROSCOPE_BIN .
	else
		if [ ! -e $INTROSCOPE_BIN ] ; then
		  echo "$INTROSCOPE_BIN is missing. Please download $INTROSCOPE_TAR from support.ca.com and place it in this directory."
		fi
	fi
fi

if [ "$errors" = false ] ; then
	echo "Starting the build"
	docker build -t apm-webview:10.5.2HF23 .
	docker tag apm-webview:10.5.2HF23 apm-webview:latest
fi
