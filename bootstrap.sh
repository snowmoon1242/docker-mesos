#!/bin/bash -e

if [ "$1" = 'master' ]; then
  exec /usr/bin/mesos master
fi

if [ "$1" = 'slave' ]; then
  exec /usr/bin/mesos slave $2 --containerizers=docker
fi
