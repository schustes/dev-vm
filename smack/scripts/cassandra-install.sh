#!/bin/bash

echo "Apache Cassandra installieren..."
# geht nur mit jdk version <= 152
export VERSION=162
sudo update-alternatives --remove "java" "/opt/Oracle_Java/jdk1.8.0_$VERSION/bin/java"
sudo update-alternatives --remove "javaws" "/opt/Oracle_Java/jdk1.8.0_$VERSION/bin/javaws"
sudo update-alternatives --remove "javac" "/opt/Oracle_Java/jdk1.8.0_$VERSION/bin/javac"
sudo update-alternatives --remove "jar" "/opt/Oracle_Java/jdk1.8.0_$VERSION/bin/jar"

#service cassandra stop

sudo apt-key adv --keyserver pool.sks-keyservers.net --recv-key A278B781FE4B2BDA
echo "deb http://www.apache.org/dist/cassandra/debian 311x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -

sudo rm -f /var/lib/dpkg/lock
sudo apt-get update
sudo apt-get install -y cassandra

