#!/bin/bash

###
# Полное удаление всего что было настроено
###


echo -e "Список контейнеров до удаления"
docker ps

echo -e "Начало удаления контейнеров..."

docker container rm -f -v shard1
docker container rm -f -v shard2
docker container rm -f -v configSrv
docker container rm -f -v mongo_router
docker container rm -f -v pymongo_api

echo -e "Список контейнеров после удаления"
docker ps






echo -e "Список volume до удаления"
docker volume ls 

echo -e "Начало удаления volume..."

docker volume rm mongo-sharding_shard1-data
docker volume rm mongo-sharding_shard2-data
docker volume rm mongo-sharding_config-data

echo -e "Список volume после удаления"
docker volume ls 
