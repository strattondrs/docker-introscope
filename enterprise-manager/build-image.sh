#!/bin/sh

errors=false
INTROSCOPE_VERSION=10.7.0.45
INTROSCOPE_TAR=introscope${INTROSCOPE_VERSION}linuxAMD64.tar
INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}linuxAMD64.bin
INTROSCOPE_HOTFIX=APM10.7.0.115SP2
INTROSCOPE_HOTFIX_JAR=${INTROSCOPE_HOTFIX}.jar
INTROSCOPE_HOTFIX_ZIP=${INTROSCOPE_HOTFIX}.zip

DIR=`pwd`

if [ ! -e ${INTROSCOPE_BIN} ] ; then
    if [ ! -e ${INTROSCOPE_TAR} ] ; then
        if [ ! -e ../${INTROSCOPE_TAR} ] ; then
            echo "\n${INTROSCOPE_BIN} is missing.\nPlease download ${INTROSCOPE_TAR} from https://support.ca.com and place it in this directory (${DIR}).\n"
            errors=true
        else
            tar xvopf ../${INTROSCOPE_TAR} ${INTROSCOPE_BIN}
        fi
    else
      tar xvopf ${INTROSCOPE_TAR} ${INTROSCOPE_BIN}
  fi
fi

if [ ! -e ${INTROSCOPE_HOTFIX_JAR} ] ; then
    if [ ! -e ../${INTROSCOPE_HOTFIX_ZIP} ] ; then
        echo "\n${INTROSCOPE_HOTFIX_JAR} is missing.\nPlease download ${INTROSCOPE_HOTFIX_ZIP} from https://support.ca.com and place it in this directory (${DIR}).\n"
        errors=true
    else
        unzip ../${INTROSCOPE_HOTFIX_ZIP}
    fi
fi


if [ "$errors" = false ] ; then
	echo "Starting the build"
	docker build -t apm-em:10.7.0-SP2 .
    docker tag apm-em:10.7.0-SP2 apm-em:latest
fi
