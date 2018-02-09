#!/bin/bash

echo "Idea installieren..."

cd /opt
rm -rf /opt/idea*

wget -O intellij.tar.gz https://download.jetbrains.com/idea/ideaIC-2017.3.4-no-jdk.tar.gz >/dev/null 2>&1
tar -xf intellij.tar.gz 

ln -s /opt/idea-IC-173.4548.28 /opt/idea
ln -s /opt/idea-IC-173.4548.28/bin/idea.sh /home/vagrant/Schreibtisch/idea.sh 

rm -f intellij.tar.gz
