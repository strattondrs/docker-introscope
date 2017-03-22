#!/bin/sh
path=$(pwd)

INTROSCOPE_VERSION=10.5.1.8
IMAGE_VERSION_TAG=10.5.1

ERRORS=false
INTROSCOPE_TAR=introscope${INTROSCOPE_VERSION}linuxAMD64.tar
INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}linuxAMD64.bin

sed -i '' "s/INTROSCOPE_VERSION=.*/INTROSCOPE_VERSION=$INTROSCOPE_VERSION/g" $path/*/build-image.sh
sed -i '' "s/INTROSCOPE_VERSION=.*/INTROSCOPE_VERSION=$INTROSCOPE_VERSION/g" $path/*/Dockerfile
sed -i '' "s/\(docker build.*:\)[0-9\.]*/\1$IMAGE_VERSION_TAG/g" $path/*/build-image.sh
sed -i '' "s/\(docker tag[^\:]*:\)[0-9\.]*/\1$IMAGE_VERSION_TAG/g" $path/*/build-image.sh

if [ "$ERRORS" = false ] ; then

    echo "Building Database image"
    cd $path/database; ./build-image.sh ;

    echo "Building enterprise manager image"
    cd $path/enterprise-manager; ./build-image.sh ;

    echo "Building webview image"
    cd $path/webview; ./build-image.sh ;

    echo "Building ACC Config Server image"
    cd $path/configserver; ./build-image.sh ;

    echo "Building sample application image"
    cd $path/sample; ./build-image.sh ;

fi
