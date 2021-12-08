#!/bin/bash

set -e

blockade destroy
#find ./volumes ! -name '.*' ! -type d -exec rm -f -- {} +
sudo rm -rf volumes/
mkdir -p volumes/zookeeper/01/data
mkdir -p volumes/kafka/01/data
mkdir -p volumes/kafka/02/data
mkdir -p volumes/kafka/03/data
blockade up
sleep 5
bash update-hosts.sh
