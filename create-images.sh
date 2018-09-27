#!/bin/sh
path=$(pwd)

OS="`uname`"
case $OS in
  'Darwin')
    SED_OPTIONS=" ''"
    ;;
    *)

    ;;
esac

INTROSCOPE_VERSION=10.7.0.45
INTROSCOPE_HOTFIX=APM10.7.0.115SP2
IMAGE_VERSION_TAG=10.7.0-SP2

ERRORS=false
INTROSCOPE_TAR=introscope${INTROSCOPE_VERSION}linuxAMD64.tar
INTROSCOPE_BIN=introscope${INTROSCOPE_VERSION}linuxAMD64.bin

sed -i ${SED_OPTIONS} "s/INTROSCOPE_VERSION=[0-9\.]\+/INTROSCOPE_VERSION=${INTROSCOPE_VERSION}/g" $path/*/build-image.sh
sed -i ${SED_OPTIONS} "s/INTROSCOPE_VERSION=[0-9\.]\+/INTROSCOPE_VERSION=${INTROSCOPE_VERSION}/g" $path/*/Dockerfile

sed -i ${SED_OPTIONS} "s/INTROSCOPE_HOTFIX=[0-9\.APMHFSP\-]\+/INTROSCOPE_HOTFIX=${INTROSCOPE_HOTFIX}/g" $path/*/build-image.sh
sed -i ${SED_OPTIONS} "s/INTROSCOPE_HOTFIX=[0-9\.APMHFSP\-]\+/INTROSCOPE_HOTFIX=${INTROSCOPE_HOTFIX}/g" $path/*/Dockerfile

sed -i ${SED_OPTIONS} "s/\(docker build.*:\)[0-9\.HFSP\-]\+/\1${IMAGE_VERSION_TAG}/g" $path/*/build-image.sh
sed -i ${SED_OPTIONS} "s/\(docker tag[^\:]*:\)[0-9\.HFSP\-]\+/\1${IMAGE_VERSION_TAG}/g" $path/*/build-image.sh
sed -i ${SED_OPTIONS} "s/\(image: .*:\)[0-9\.HFSP\-]\+/\1${IMAGE_VERSION_TAG}/g" $path/docker-compose.yml
sed -i ${SED_OPTIONS} "s/IMAGE_VERSION_TAG=[0-9\.HFSP\-]\+/IMAGE_VERSION_TAG=${IMAGE_VERSION_TAG}/g" push-images.sh
sed -i ${SED_OPTIONS} "s/LABEL version=\"[0-9\.HFSP\-]\+\"/LABEL version=\"${IMAGE_VERSION_TAG}\"/g" $path/*/Dockerfile

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
