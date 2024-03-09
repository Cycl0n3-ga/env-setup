#!/bin/bash


# Update package lists and install desired packages
apt update
apt install -y snap zsh tmux neofetch htop vim curl powertop speedtest-cli

# Install Zsh and set it as default shell
chsh -s $(which zsh)

#install ohmyzsh

wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


#install docker 
# Add Docker's official GPG key:
apt-get update
apt-get install ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update
apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
#Post-installation set-up without sudo
groupadd docker
usermod -aG docker $USER
newgrp docker
#Set-up boot
systemctl enable docker.service
systemctl enable containerd.service

cp .zshrc ~/

# Copy .vimrc file
cp vimrc ~/.vimrc
p10k configure


