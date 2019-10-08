#!/bin/bash

docker volume create nethackwikizim
docker run --name=redis --rm -d redis
docker run --rm -v=nethackwikizim:/out --link=redis:redis --name=mwoffliner openzim/mwoffliner mwoffliner --redis="redis://redis" --verbose --mwUrl=https://nethackwiki.com/ --adminEmail=tmp6154@yandex.ru --outputDirectory=/out || { docker stop redis; exit 1 }
docker stop redis
docker container create --name temp -v nethackwikizim:/out busybox
docker cp temp:/out .
docker rm temp
docker volume rm nethackwikizim
