#!/bin/bash

###
# Заполняем бд данными
###


docker compose exec -T mongo_router mongosh --port 27020 --quiet <<EOF
use somedb;
sh.enableSharding("somedb");
db.createCollection("helloDoc")
db.helloDoc.createIndex({ "name": "hashed" });
sh.shardCollection("somedb.helloDoc", { "name" : "hashed" });

for(var i = 0; i < 1000; i++) db.helloDoc.insertOne({age:i, name:"ly"+i});
db.helloDoc.countDocuments();
EOF