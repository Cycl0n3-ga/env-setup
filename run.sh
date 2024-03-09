#!/bin/bash


# Update package lists and install desired packages
sudo apt update
sudo apt install -y snap tmux neofetch htop vim curl powertop speedtest-cli

# Install Zsh and set it as default shell
sudo apt install zsh
chsh -s $(which zsh)

#install ohmyzsh

wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


#install docker 
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
#Post-installation set-up without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
#Set-up boot
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

cp .zshrc ~/

# Copy .vimrc file
cp vimrc ~/.vimrc
p10k configure


