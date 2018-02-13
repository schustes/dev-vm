#!/bin/bash

echo "Scala env einrichten..."

rm -rf /opt/scala

mkdir /opt/scala

wget https://github.com/sbt/sbt/releases/download/v1.1.0/sbt-1.1.0.tgz 2>&1
wget https://downloads.lightbend.com/scala/2.12.4/scala-2.12.4.tgz 2>&1

tar -xzf sbt-1.1.0.tgz
tar -xzf scala-2.12.4.tgz

rm sbt-1.1.0.tgz
rm scala-2.12.4.tgz

echo PATH=\$PATH:/opt/scala/sbt/bin:opt/scala/scala-2.12.4/bin >> /home/vagrant/.profile
source /home/vagrant/.profile

