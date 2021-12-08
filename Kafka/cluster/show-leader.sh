#!/bin/bash

while true
do
    CONTAINER_ID=$(docker ps | grep $1 | awk '{ print $1 }')
    docker exec -t $CONTAINER_ID kafka-topics --bootstrap-server localhost:9092 --topic $2 --describe
done
