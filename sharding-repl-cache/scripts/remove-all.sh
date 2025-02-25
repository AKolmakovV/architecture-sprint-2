#!/bin/bash

###
# Полное удаление всего что было настроено
###


echo -e "Список контейнеров до удаления"
docker ps

echo -e "Начало удаления контейнеров..."

docker container rm -f -v shard1
docker container rm -f -v shard1-slave1
docker container rm -f -v shard1-slave2
docker container rm -f -v shard2
docker container rm -f -v shard2-slave1
docker container rm -f -v shard2-slave2
docker container rm -f -v configSrv
docker container rm -f -v mongo_router
docker container rm -f -v pymongo_api
docker container rm -f -v redis

echo -e "Список контейнеров после удаления"
docker ps






echo -e "Список volume до удаления"
docker volume ls 

echo -e "Начало удаления volume..."

docker volume rm sharding-repl-cache_config-data
docker volume rm sharding-repl-cache_shard1-data
docker volume rm sharding-repl-cache_shard1-slave1-data
docker volume rm sharding-repl-cache_shard1-slave2-data
docker volume rm sharding-repl-cache_shard2-data
docker volume rm sharding-repl-cache_shard2-slave1-data
docker volume rm sharding-repl-cache_shard2-slave2-data
docker volume rm sharding-repl-cache_redis_data

echo -e "Список volume после удаления"
docker volume ls 






echo -e "Список сетей до удаления"
docker network ls


echo -e "Начало удаления network..."

docker network rm sharding-repl-cache_app-network

echo -e "Список сетей после удаления"
docker network ls
