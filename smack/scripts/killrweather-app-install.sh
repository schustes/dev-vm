#!/bin/bash

echo "killrweather app holen..."

sudo kill -9 `pgrep --full kafka-demo`

rm -rf /opt/src/killrweather

mkdir -p /opt/src
cd /opt/src/

git clone https://github.com/killrweather/killrweather.git


