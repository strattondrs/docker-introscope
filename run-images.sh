#!/bin/sh
path=$(pwd)

echo "Starting apmdb image"
$path/database/run-default-postgres-container.sh

echo "\nStarting enterprise manager image"
$path/enterprise-manager/run-default-em-container.sh

echo "\nStarting webview image"
$path/webview/run-default-webview-container.sh
