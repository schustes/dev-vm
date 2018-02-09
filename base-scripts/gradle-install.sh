#!/bin/bash

echo "Gradle installieren..."

cd /opt
sudo rm -rf /opt/gradle*

sudo wget https://services.gradle.org/distributions/gradle-4.5.1-bin.zip >/dev/null 2>&1

sudo unzip gradle-4.5.1-bin.zip >/dev/null 2>&1
sudo ln -s /opt/gradle-4.5.1 /opt/gradle
sudo rm -f /opt/gradle-4.5.1-bin.zip

echo PATH=\$PATH:/opt/gradle/bin >> /home/vagrant/.profile
source /home/vagrant/.profile
