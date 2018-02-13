#!/bin/bash

echo "Vorbereitung..."

rm -rf /tmp/*
rm -rf /var/log/*
mkdir /var/log/apt

sudo kill -9 `pgrep fuse`

mkdir -p /var/cache/apt/lists
touch /var/cache/apt/lists/lock 
rm -f /var/lib/dpkg/lock
apt-get install -y curl

mkdir -p /opt/src