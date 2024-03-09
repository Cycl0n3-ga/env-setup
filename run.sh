#!/bin/bash


# Update package lists and install desired packages
apt update
apt install -y snap zsh tmux neofetch htop vim curl powertop speedtest-cli wget gcc iotop cron tree ca-certificates

# Copy .vimrc file
rm ~/.vimrc
cp vimrc ~/.vimrc

#=============================install docker 
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
#=============================install docker 

# Install Zsh and set it as default shell
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh run.shgit clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#install ohmyzsh
sh install.sh
chsh -s $(which zsh)

rm ~/.zshrc
cp zshrc ~/.zshrc
zsh
source ~/.zshrc

p10k configure


#Post-installation set-up without sudo
groupadd docker
usermod -aG docker $USER
newgrp docker
