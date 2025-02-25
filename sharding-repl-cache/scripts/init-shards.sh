#!/bin/bash

###
# Инициализируем шарды
###

docker compose exec -T shard1 mongosh --port 27018 --quiet <<EOF
rs.initiate({_id : "shard1ReplicaSet", members: [
        { _id : 0, host : "shard1:27018" },
        { _id : 1, host : "shard1-slave1:27019" },
        { _id : 2, host : "shard1-slave2:27020" }
    ]
});
EOF

docker compose exec -T shard2 mongosh --port 27021 --quiet <<EOF
rs.initiate({_id : "shard2ReplicaSet", members: [
        { _id : 0, host : "shard2:27021" },
        { _id : 1, host : "shard2-slave1:27022" },
        { _id : 2, host : "shard2-slave2:27023" }
    ]
});
EOF