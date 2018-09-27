#!/bin/bash

INTROSCOPE_VERSION=10.7.0.45
DB_VERSION=`echo ${INTROSCOPE_VERSION} | sed -E 's#([0-9]+\.[0-9]+\.[0-9]+)\.[0-9]+#\1.0#'`

OS="`uname`"
case $OS in
  'Darwin')
    SED_OPTIONS=" ''"
    ;;
    *)

    ;;
esac

sed -i ${SED_OPTIONS} "s/dbversion=.*/dbversion=${DB_VERSION}/g" ./createInstallDatabasesForIntroscope.sh

docker build -t apm-postgres:10.7.0-SP2 .
docker tag apm-postgres:10.7.0-SP2 apm-postgres:latest
