#!/bin/bash

echo "Maven installieren..."

cd /opt
sudo rm -rf /opt/mvn*

sudo wget http://apache.lauf-forum.at/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.tar.gz >/dev/null 2>&1

sudo tar -xf apache-maven-3.5.2-bin.tar.gz
sudo ln -s /opt/apache-maven-3.5.2 /opt/mvn
sudo rm -f /opt/apache-maven-3.5.2-bin.tar.gz

echo PATH=\$PATH:/opt/mvn/bin >> /home/vagrant/.profile
source /home/vagrant/.profile
