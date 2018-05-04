#!/bin/bash

INTROSCOPE_VERSION=10.7.0.45
DB_VERSION=`echo ${INTROSCOPE_VERSION} | sed -E 's#([0-9]+\.[0-9]+\.[0-9]+)\.[0-9]+#\1.0#'`

sed -i '' "s/dbversion=.*/dbversion=${DB_VERSION}/g" ./createInstallDatabasesForIntroscope.sh

docker build -t apm-postgres:10.7.0-HF3 .
docker tag apm-postgres:10.7.0-HF3 apm-postgres:latest
