#!/bin/sh

docker exec -it $(docker ps -f name=fpm -q) bash