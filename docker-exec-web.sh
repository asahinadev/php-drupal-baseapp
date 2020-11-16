#!/bin/sh

docker exec -it $(docker ps -f name=web -q) bash