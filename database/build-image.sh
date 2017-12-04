#!/bin/bash

docker build -t apm-postgres:10.5.2HF23 .
docker tag apm-postgres:10.5.2HF23 apm-postgres:latest
