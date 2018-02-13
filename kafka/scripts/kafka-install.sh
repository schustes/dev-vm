#!/bin/bash

echo "Kafka installieren..."

sudo kill -9 `pgrep --full kafka`
rm -rf /tmp/kafka-logs

cd /opt
rm -rf /opt/kafka

wget http://apache.lauf-forum.at/kafka/1.0.0/kafka_2.12-1.0.0.tgz >/dev/null 2>&1

tar -xzf kafka_2.12-1.0.0.tgz

ln -s /opt/kafka_2.12-1.0.0 /opt/kafka
rm -f /opt/kafka_2.12-1.0.0.tgz

#Listen addresses
echo  >> /opt/kafka/config/server.properties
echo advertised.listeners=PLAINTEXT://192.168.56.1:9092 >> /opt/kafka/config/server.properties

cd /opt/kafka
nohup bin/zookeeper-server-start.sh config/zookeeper.properties & >/var/log/zookeeper.log 2>&1
sleep 5
nohup bin/kafka-server-start.sh config/server.properties & >/var/log/kafka.log 2>&1
#create test topic
sleep 5
bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test

