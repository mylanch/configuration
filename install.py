#!/bin/sh
sudo cp -rf sources.list /etc/apt/sources.list
sudo apt-get update
sudo chsh -s /bin/zsh
sudo apt-get -y install curl
curl -sSL http://acs-public-mirror.oss-cn-hangzhou.aliyuncs.com/docker-ce/internet | sh -
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://4txzd7vs.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
sudo apt-get -y install openssh-server
sudo service ssh start 
sudo apt-get -y install tree
