#!/bin/sh
sudo cp -rf sources.list /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y install vim
sudo cp -rf .vim .oh-my-zsh .vimrc .zshrc ~
sudo chsh -s /bin/zsh
sudo apt-get -y install curl
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get -y install docker-ce
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
sudo apt-get -y install tree"
