#!/bin/bash

SUDO=

if [ "$(id -u)" != "0" ]; then
  if [ "$(uname)" != "Darwin" ]; then
    SUDO=sudo
  fi
fi

$SUDO docker build -t apm-postgres .
