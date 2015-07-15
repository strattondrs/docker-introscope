#!/bin/sh
path=$(pwd)
INTROSCOPE_VERSION=9.7.1.16

echo "Building Database image"
cd $path/database/$INTROSCOPE_VERSION; ./build-image.sh ;

echo "Building enterprise manager image"
cd $path/enterprise-manager/$INTROSCOPE_VERSION; ./build-image.sh ;

echo "Building webview image"
cd $path/webview/$INTROSCOPE_VERSION; ./build-image.sh ;

echo "Building sample application image"
cd $path/sample/$INTROSCOPE_VERSION; ./build-image.sh ;
