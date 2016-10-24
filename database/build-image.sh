#!/bin/bash

docker build -t apm-postgres:10.5 .
docker tag apm-postgres:10.5 apm-postgres:latest
