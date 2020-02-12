#!/bin/sh

#!/bin/sh

errors=false
INTROSCOPE_VERSION=10.7.0.45
INTROSCOPE_TAR=introscope${INTROSCOPE_VERSION}linuxAMD64.tar
INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}linuxAMD64.bin
DIR=`pwd`

if [ ! -e $INTROSCOPE_BIN ] ; then
	if [ ! -e ../${INTROSCOPE_TAR} ] ; then
		echo "\n${INTROSCOPE_BIN} is missing.\nPlease download ${INTROSCOPE_TAR} from https://support.ca.com and place it in this directory (${DIR}).\n"
		errors=true
	else
		tar xvopf ../${INTROSCOPE_TAR} ${INTROSCOPE_BIN}
	fi
fi

if [ "$errors" = false ] ; then
	echo "Starting the build"
	docker build -t apm-configserver:10.7.0-SP3 .
    docker tag apm-configserver:10.7.0-SP3 apm-configserver:latest
fi
