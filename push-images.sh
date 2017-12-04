#!/bin/sh

IMAGE_VERSION=10.5.2HF23

docker tag apm-em:$IMAGE_VERSION isl-dsdc.ca.com:5000/apmswat/apm-em:$IMAGE_VERSION
docker tag apm-webview:$IMAGE_VERSION isl-dsdc.ca.com:5000/apmswat/apm-webview:$IMAGE_VERSION
docker tag apm-postgres:$IMAGE_VERSION isl-dsdc.ca.com:5000/apmswat/apm-postgres:$IMAGE_VERSION
docker tag apm-configserver:$IMAGE_VERSION isl-dsdc.ca.com:5000/apmswat/apm-configserver:$IMAGE_VERSION

docker push isl-dsdc.ca.com:5000/apmswat/apm-em:$IMAGE_VERSION
docker push isl-dsdc.ca.com:5000/apmswat/apm-webview:$IMAGE_VERSION
docker push isl-dsdc.ca.com:5000/apmswat/apm-postgres:$IMAGE_VERSION
docker push isl-dsdc.ca.com:5000/apmswat/apm-configserver:$IMAGE_VERSION

