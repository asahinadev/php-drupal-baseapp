#!/bin/sh

docker exec -it $(docker ps -f name=db -q) bash