#!/bin/bash

###
# Инициализируем роутер
###

docker compose exec -T mongo_router mongosh --port 27024 --quiet <<EOF
sh.addShard("shard1ReplicaSet/shard1:27018,shard1-slave1:27019,shard1-slave2:27020");
sh.addShard("shard2ReplicaSet/shard2:27021,shard2-slave1:27022,shard2-slave2:27023");

sh.enableSharding("somedb");
db.createCollection("helloDoc")
db.helloDoc.createIndex({ "name": "hashed" });
sh.shardCollection("somedb.helloDoc", { "name" : "hashed" } );
EOF