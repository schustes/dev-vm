#!/bin/bash

echo "Eclipse installieren..."

cd /opt
sudo rm -rf /opt/eclipse*

wget -O eclipse.tar.gz http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-jee-oxygen-2-linux-gtk-x86_64.tar.gz >/dev/null 2>&1
tar -xf eclipse.tar.gz 

ln -s /opt/eclipse/eclipse /home/vagrant/Schreibtisch/eclipse 

rm -f eclipse.tar.gz