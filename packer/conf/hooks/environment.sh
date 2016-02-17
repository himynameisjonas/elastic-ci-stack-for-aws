#!/bin/bash -eu
if [[ -f ~/.docker/config.json || -f ~/.dockercfg ]] ; then
  docker logout
fi
echo "~~~ Stopping existing docker containers"
if [[ \$(docker ps -q | wc -l) -gt 0 ]] ; then
  docker stop \$(docker ps -q)
fi