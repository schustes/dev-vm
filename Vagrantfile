Vagrant.configure("2") do |config|
  config.vm.box = "stephan_schuster/ubuntu16.04.3-desktop-64bit"
  config.vm.box_version = "1.0.0"
  config.vm.network "forwarded_port", guest: 22, host: 2222, host_ip: "127.0.0.1", id: 'ssh'
  config.vm.synced_folder './', '/vagrant', type: 'nfs', nfs_udp: false, nfs_version: 4
  config.vm.synced_folder './', '/var/logs', type: 'nfs', nfs_udp: false, nfs_version: 4

  config.vm.provision "shell", path: "scripts/pre.sh"
  config.vm.provision "shell", path: "scripts/git-install.sh"
  config.vm.provision "shell", path: "scripts/mvn-install.sh" 
  config.vm.provision "shell", path: "scripts/gradle-install.sh"
  config.vm.provision "shell", path: "scripts/idea-install.sh"
  config.vm.provision "shell", path: "scripts/kafka-install.sh"
  config.vm.network :forwarded_port, guest: 2181, host: 2181, id:'zookeeper'
  config.vm.network :forwarded_port, guest: 9092, host: 9092, id:'kafka'
  config.vm.provision "shell", path: "scripts/sample-app-install.sh"
  config.vm.network :forwarded_port, guest: 12001, host: 12001, id:'kafka-demo-app'
  config.vm.provision "shell", path: "scripts/post-install.sh"

 end