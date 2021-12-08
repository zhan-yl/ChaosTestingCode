#!/bin/bash

CONTAINER_ID=$(docker ps | grep $1 | awk '{ print $1 }')
docker exec -t $CONTAINER_ID kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 3 --partitions 1 --topic $2
sleep 10
bash print-topic-details.sh $1 $2
