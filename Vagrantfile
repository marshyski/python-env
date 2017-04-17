# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
apt-get update -y
apt-get upgrade -y
apt-get install -y curl python python-dev git python-pip vim nano zlib1g-dev libreadline-dev libbz2-dev libssl-dev python3 python3-dev python3-pip
apt-get clean
pip install virtualenv pylint
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
echo 'eval "$(pyenv init -)"' > /etc/profile.d/pyenv.sh
echo 'eval "$(pyenv virtualenv-init -)"' >> /etc/profile.d/pyenv.sh
curl -sSL https://get.docker.com/ |  sh
SCRIPT

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "#{ENV['USER']}"
  config.vm.network :private_network, ip: "10.20.1.15"
  config.vm.network "forwarded_port", guest: 80, host: 8888, auto_correct: true
  config.vm.network "forwarded_port", guest: 5432, host: 5432, auto_correct: true
  config.vm.network "forwarded_port", guest: 5000, host: 5000, auto_correct: true
  config.vm.network "forwarded_port", guest: 5601, host: 5601, auto_correct: true
  config.vm.network "forwarded_port", guest: 8000, host: 8000, auto_correct: true
  config.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true
  config.vm.network "forwarded_port", guest: 8443, host: 8443, auto_correct: true
  config.vm.network "forwarded_port", guest: 9000, host: 9000, auto_correct: true
  config.vm.network "forwarded_port", guest: 9200, host: 9200, auto_correct: true
  config.vm.network "forwarded_port", guest: 6379, host: 6379, auto_correct: true
  for i in  32768..32868
      config.vm.network "forwarded_port", guest: i, host: i, auto_correct: true
  end

  config.vm.synced_folder "#{ENV['HOME']}", "/vagrant"

  config.vm.provider "virtualbox" do |v|
      v.name = "#{ENV['USER']}"
      v.memory = 4096
      v.cpus = 4
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  config.vm.provision "shell", inline: $script, privileged: true
end
