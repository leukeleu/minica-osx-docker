#!/usr/bin/env sh
docker build . -t minica
docker create --name minica minica
docker cp minica:/build/minica .
docker rm minica
docker rmi minica

