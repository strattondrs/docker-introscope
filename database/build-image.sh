#!/bin/bash

docker build -t apm-postgres:10.3 .
docker tag apm-postgres:10.3 apm-postgres:latest
