#!/bin/bash
docker volume create nethackwikizim
docker run --rm -v=nethackwikizim:/out --name=mwoffliner openzim/mwoffliner mwoffliner --verbose --mwUrl=https://nethackwiki.com/ --adminEmail=example@example.com --outputDirectory=/out
docker container create --name temp -v nethackwikizim:/out busybox
docker cp temp:/out .
docker rm temp
docker volume rm nethackwikizim