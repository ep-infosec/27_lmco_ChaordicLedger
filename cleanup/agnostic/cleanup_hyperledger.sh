#!/bin/sh

docker container ls -a
#docker ps --format "{{.ID}}" | xargs docker container stop
docker ps --filter name=chaordiccluster-control-plane --format "{{.ID}}" | xargs docker container stop
docker container prune -f
docker container ls -a
