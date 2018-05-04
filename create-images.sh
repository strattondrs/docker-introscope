#!/bin/sh
path=$(pwd)

INTROSCOPE_VERSION=10.7.0.45
INTROSCOPE_HOTFIX=10.7.0HF03
INTROSCOPE_HOTFIX_ZIP=APM10.7.0HF03b05.zip
IMAGE_VERSION_TAG=10.7.0-HF3

ERRORS=false
INTROSCOPE_TAR=introscope${INTROSCOPE_VERSION}linuxAMD64.tar
INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}linuxAMD64.bin

sed -i '' "s/INTROSCOPE_VERSION=[0-9\.]*/INTROSCOPE_VERSION=${INTROSCOPE_VERSION}/g" $path/*/build-image.sh
sed -i '' "s/INTROSCOPE_VERSION=[0-9\.]*/INTROSCOPE_VERSION=${INTROSCOPE_VERSION}/g" $path/*/Dockerfile
sed -i '' "s/INTROSCOPE_HOTFIX=[0-9\.HF\-]*/INTROSCOPE_HOTFIX=${INTROSCOPE_HOTFIX}/g" $path/*/build-image.sh
sed -i '' "s/INTROSCOPE_HOTFIX_ZIP=.*/INTROSCOPE_HOTFIX_ZIP=${INTROSCOPE_HOTFIX_ZIP}/g" $path/*/build-image.sh
sed -i '' "s/INTROSCOPE_HOTFIX=[0-9\.HF\-]*/INTROSCOPE_HOTFIX=${INTROSCOPE_HOTFIX}/g" $path/*/Dockerfile
sed -i '' "s/\(docker build.*:\)[0-9\.HF\-]*/\1${IMAGE_VERSION_TAG}/g" $path/*/build-image.sh
sed -i '' "s/\(docker tag[^\:]*:\)[0-9\.HF\-]*/\1${IMAGE_VERSION_TAG}/g" $path/*/build-image.sh
sed -i '' "s/\(image: .*:\)[0-9\.HF\-]*/\1${IMAGE_VERSION_TAG}/g" $path/docker-compose.yml
sed -i '' "s/IMAGE_VERSION_TAG=[0-9\.HF\-]*/IMAGE_VERSION_TAG=${IMAGE_VERSION_TAG}/g" push-images.sh

if [ "$ERRORS" = false ] ; then

    echo "\n\nBuilding Database image"
    cd $path/database; ./build-image.sh ;

    echo "\n\nBuilding Enterprise Manager image"
    cd $path/enterprise-manager; ./build-image.sh ;

    echo "\n\nBuilding WebView image"
    cd $path/webview; ./build-image.sh ;

    echo "\n\nBuilding ACC Config Server image"
    cd $path/configserver; ./build-image.sh ;

#    echo "Building sample application image"
#    cd $path/sample; ./build-image.sh ;

fi
