#!/bin/bash

###
# Все необходимые проверки
###

echo -e "Проверка на количество документов в базе данных"

docker compose exec -T mongo_router mongosh --port 27024 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF



echo -e "Проверка на количество документов в shard1"

docker compose exec -T shard1 mongosh --port 27018 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF


echo -e "Проверка на количество документов в shard1 slave1"

docker compose exec -T shard1-slave1 mongosh --port 27019 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF


echo -e "Проверка на количество документов в shard1 slave2"

docker compose exec -T shard1-slave2 mongosh --port 27020 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF


echo -e "Проверка на количество документов в shard2"

docker compose exec -T shard2 mongosh --port 27021 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF


echo -e "Проверка на количество документов в shard2 slave1"

docker compose exec -T shard2-slave1 mongosh --port 27022 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF


echo -e "Проверка на количество документов в shard2 slave2"

docker compose exec -T shard2-slave2 mongosh --port 27023 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF