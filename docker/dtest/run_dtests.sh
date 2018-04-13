#!/bin/sh

# test targets
commands=$(./dtest | awk '/Available Commands/{flag=1;next}/^$/{flag=0}flag' | awk '{print $1}')
for c in $commands; do
  echo $c
  ./dtest $c --m3db-build ./m3dbnode --m3db-config ./m3dbnode-integration-service.yaml --dtest-config ./dtest-integration-service.yaml
  sleep 60
done

