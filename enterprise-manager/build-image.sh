#!/bin/sh

errors=false
INTROSCOPE_VERSION=10.5.1.8
INTROSCOPE_TAR=introscope${INTROSCOPE_VERSION}linuxAMD64.tar
INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}linuxAMD64.bin
DIR=`pwd`

if [ ! -e $INTROSCOPE_BIN ] ; then
    if [ ! -e $INTROSCOPE_TAR ] ; then
        if [ ! -e ../$INTROSCOPE_TAR ] ; then
            echo "\n$INTROSCOPE_BIN is missing.\nPlease download $INTROSCOPE_TAR from https://support.ca.com and place it in this directory ($DIR).\n"
            errors=true
        else
            tar xvopf ../${INTROSCOPE_TAR} ${INTROSCOPE_BIN}
        fi
    else
      tar xvopf ${INTROSCOPE_TAR} ${INTROSCOPE_BIN}
  fi
fi



if [ "$errors" = false ] ; then
	echo "Starting the build"
	docker build -t apm-em:10.5.1-HF9 .
    docker tag apm-em:10.5.1-HF9 apm-em:latest
fi
