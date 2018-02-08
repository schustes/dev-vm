#!/bin/bash

echo "Vorbereitung..."

sudo kill -9 `pgrep fuse`

sudo mkdir -p /var/cache/apt/lists
sudo touch /var/cache/apt/lists/lock 