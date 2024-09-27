#!/bin/bash

# Update package list and upgrade packages
sudo apt update && sudo apt upgrade -y

# Install Brave Browser
sudo apt install apt-transport-https curl -y
curl -fsSL https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo gpg --dearmor -o /usr/share/keyrings/brave-browser.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser.list
sudo apt update
sudo apt install brave-browser -y

# Install VS Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/microsoft.gpg
echo "deb [signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code -y

# Install Spotify
snap install spotify

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
rm google-chrome-stable_current_amd64.deb

# Install Obsidian
snap install obsidian

# Install Telegram
sudo snap install telegram-desktop

# Install Postman
snap install postman

# Install Discord
sudo snap install discord

# Install MongoDB
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu focal/multiverse amd64 mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt update
sudo apt install -y mongodb-org

# Install MongoDB Compass
wget https://downloads.mongodb.com/compass/mongodb-compass_1.30.1_amd64.deb
sudo apt install ./mongodb-compass_1.30.1_amd64.deb -y
rm mongodb-compass_1.30.1_amd64.deb

# Install Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce -y

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install Vim
sudo apt install vim -y

# Install Python and Pip
sudo apt install python3 python3-pip -y

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node # Install the latest version of Node.js

# Install GNOME Terminal
sudo apt install gnome-terminal -y

# Install Top
sudo apt install procps -y

# Install Neofetch
sudo apt install neofetch -y

# Install Bashtop
sudo apt install bashtop -y

# Install Proton VPN
sudo apt install -y protonvpn

# Install ZSH
sudo apt install zsh -y
chsh -s $(which zsh) # Change default shell to ZSH

# Install Git
sudo apt install git -y

echo "All software installed!"
