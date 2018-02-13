#!/bin/bash

echo "scc holen..."

rm -rf /opt/src/scc/kafka
mkdir -p /opt/src/scc/kafka

cp -R /home/vagrant/.ssh /root

cd /opt/src/scc/kafka

ssh-keyscan gitlab.com >> ~/.ssh/known_hosts

chmod 000 ~/.ssh/id_rsa
chmod u=r ~/.ssh/id_rsa

#su - vagrant
git clone ssh://git@gitlab.com/sidion-code-camp-2017/KafkaChessDeployment.git
git clone ssh://git@gitlab.com/sidion-code-camp-2017/KafkaChessService.git
git clone ssh://git@gitlab.com/sidion-code-camp-2017/KafkaChessGateway.git
git clone ssh://git@gitlab.com/sidion-code-camp-2017/KafkaChessGui.git
