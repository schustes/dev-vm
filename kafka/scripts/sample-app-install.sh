#!/bin/bash

echo "Testapp installieren..."

sudo kill -9 `pgrep --full kafka-demo`

cd /opt
rm -rf /opt/kafka-demo

git clone https://github.com/schustes/kafka-demo.git

cd /opt/kafka-demo
nohup /opt/gradle/bin/gradle bootRun & >/dev/null

echo "Testapp sollte nun unter localhost:12001/kafkademo/consumer erreichbar sein!"

