#!/bin/sh

errors=false
INTROSCOPE_VERSION=10.7.0.45
INTROSCOPE_TAR=introscope${INTROSCOPE_VERSION}linuxAMD64.tar
INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}linuxAMD64.bin
INTROSCOPE_HOTFIX=10.7.0HF03
INTROSCOPE_HOTFIX_JAR=APM${INTROSCOPE_HOTFIX}.jar

if [ ! -e $INTROSCOPE_BIN ] ; then
	if [ ! -e ../${INTROSCOPE_TAR} ] ; then
		echo "\n${INTROSCOPE_BIN} is missing.\nPlease download ${INTROSCOPE_TAR} from https://support.ca.com and place it in this directory (${DIR}).\n"
		errors=true
	else
		tar xvopf ../${INTROSCOPE_TAR} ${INTROSCOPE_BIN}
	fi
fi

if [ ! -e ${INTROSCOPE_HOTFIX_JAR} ] ; then
    if [ ! -e ../enterprise-manager/${INTROSCOPE_HOTFIX_JAR} ] ; then
        echo "\n${INTROSCOPE_HOTFIX_JAR} is missing.\nPlease download ${INTROSCOPE_HOTFIX_JAR} from https://support.ca.com and place it in this directory (${DIR}).\n"
        errors=true
    else
        cp ../enterprise-manager/${INTROSCOPE_HOTFIX_JAR} .
    fi
fi

if [ "$errors" = false ] ; then
	echo "Starting the build"
	docker build -t apm-webview:10.7.0-HF3 .
	docker tag apm-webview:10.7.0-HF3 apm-webview:latest
fi
