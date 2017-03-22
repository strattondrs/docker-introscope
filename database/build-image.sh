#!/bin/bash

docker build -t apm-postgres:10.5.1 .
docker tag apm-postgres:10.5.1 apm-postgres:latest
