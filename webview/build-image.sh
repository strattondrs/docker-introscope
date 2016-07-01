#!/bin/sh

errors=false
INTROSCOPE_VERSION=10.2.0.27
INTROSCOPE_BUILD=10.2.0-ISCP/build-990300\(${INTROSCOPE_VERSION}\)
TRUSS_URL=http://truss.ca.com/builds/InternalBuilds
INTROSCOPE_TAR=introscope${INTROSCOPE_VERSION}other.tar
INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}otherUnix.jar

if [ ! -e $INTROSCOPE_BIN ] ; then
	if [ -e ../enterprise-manager/$INTROSCOPE_BIN ]; then
		cp ../enterprise-manager/$INTROSCOPE_BIN .
	else
		wget ${TRUSS_URL}/${INTROSCOPE_BUILD}/introscope${INTROSCOPE_VERSION}/introscope${INTROSCOPE_VERSION}other.tar
#  	tar xvopf introscope${INTROSCOPE_VERSION}other.tar ${INTROSCOPE_BIN}
  fi
fi

if [ "$errors" = false ] ; then
	echo "Starting the build"
	docker build -t apm-webview:10.2 .
fi
