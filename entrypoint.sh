#!/bin/bash -e

if [ "$1" = 'master' ]; then
  /usr/bin/mesos master
fi

if [ "$1" = 'slave' ]; then
  /usr/bin/mesos slave $2
fi

exec "$@"
