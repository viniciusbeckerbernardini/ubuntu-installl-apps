#!/bin/bash
echo "Vai começar a instalação galo véio!"
#Navegadores
wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" && dpkg -i google-chrome-stable_current_amd64.deb 
sudo snap install firefox

#IDEs
snap install phpstorm --classic
snap install webstorm --classic
snap install goland --classic
snap install clion --classic
snap install datagrip --classic
#Dbeaver
snap install dbeaver-ce
#Editores de texto
#Sublime
snap install sublime-text --classic
#Docker
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update
apt-cache policy docker-ce
apt install docker-ce -y
usermod -aG docker ${USER}
su - ${USER}
usermod -aG docker vinicius
#git
apt install -y git  
#vim
apt install -y vim
#teams
snap install teams-for-linux
snap install spotify
#openforti
apt install openfortivpn
#spotify
snap install spotify
echo "Terminou, bah, toppen oppen gloppen floppen"
