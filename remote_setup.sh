#!/bin/bash

### apt install sudo
### adduser t2elzeth
### usermod -aG sudo t2elzeth
### su - t2elzeth
### t2elzeth     ALL=(ALL) NOPASSWD:ALL

BASE_DIR=$(pwd)/".dotfiles/"

### Update
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get full-upgrade -y
sudo apt-get autoremove
sudo apt-get clean

### Install required packages
sudo apt-get install git, vim, curl, tmux, xclip

### Install docker
if ! command -v docker; then
  curl -fsSL https://get.docker.com -o get-docker.sh
  sudo sh get-docker.sh

  sudo usermod -aG docker "$(whoami)"
else
  echo "Docker exists!"
fi

### Install docker-compose
if ! command -v docker-compose; then
  sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
else
  echo "Docker-compose exists!"
fi


FILES=(".bashrc" ".bash_aliases" ".bash_functions" ".update")
# Delete all dotfiles that are gonna be symlinked
for i in "${FILES[@]}"; do
  rm -rf ~/"$i"
done
echo "Deleted all dotfiles"

# Create symlinks for dotfiles
for i in "${FILES[@]}"; do
  cp "$BASE_DIR"/"$i" ~/
done
echo "Created symlinks for dotfiles"
