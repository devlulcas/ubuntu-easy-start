#!/bin/bash

# Verifica se o usuário é root
if [ "$EUID" -ne 0 ]
  then echo "Por favor, execute como root!"
  exit
fi

echo "Iniciando o script..."

# Instalando componentes básicos
apt-get update
apt-get install -y build-essential
apt-get install -y git
apt-get install -y curl
apt-get install -y wget
apt-get install -y htop
apt-get install -y unzip
apt-get install -y zip

# Instalando o ZSH
apt-get install -y zsh
chsh -s $(which zsh)

# Instalando o Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Instalando fontes
source fonts.sh
