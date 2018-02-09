#!/bin/bash

echo "Spark installieren..."

sudo kill -9 `pgrep --full spark`

cd /opt
rm -rf /opt/spark*

wget http://apache.lauf-forum.at/spark/spark-2.2.1/spark-2.2.1-bin-hadoop2.7.tgz >/dev/null 2>&1

tar -xzf spark-2.2.1-bin-hadoop2.7.tgz

ln -s /opt/spark-2.2.1-bin-hadoop2.7 /opt/spark
rm -f /opt/spark-2.2.1-bin-hadoop2.7.tgz
