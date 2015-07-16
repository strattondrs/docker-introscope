#!/bin/sh

introscopeinstallfile="introscope10.0.0.12otherUnix.jar"
osgipackages="osgiPackages.v10.0.0.12.unix.tar"
errors=false

if [ ! -e $introscopeinstallfile ] ; then
	echo "FATAL: File $introscopeinstallfile does not exist. Please provide this file before building the image"
	errors=true
fi

if [ ! -e $osgipackages ] ; then
	echo "FATAL: File $osgipackages does not exist. Please download this from http://opensrcd.ca.com/ips/osgi/introscope_10.0.0.12/"
	errors=true
fi

if [ "$errors" = false ] ; then
	echo "Starting the build"
	sudo docker build -t ggrossbe/introscope-em-10.0 .
fi
