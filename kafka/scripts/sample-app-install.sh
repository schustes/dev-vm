#!/bin/bash

echo "Testapp installieren..."

sudo kill -9 `pgrep --full kafka-demo`

sudo rm -rf /opt/src/kafka-demo/*
sudo  mkdir -p /opt/src
cd /opt/src

git clone https://github.com/schustes/kafka-demo.git

cd /opt/src/kafka-demo
nohup /opt/gradle/bin/gradle bootRun & >/var/log/kafka-demo-app.log

echo "Testapp sollte nach ein paar Sekunden/Minuten unter localhost:12001/kafkademo/consumer erreichbar sein!"

