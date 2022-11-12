#!/bin/bash

# Verifica se o usuário é root
if [ "$EUID" -ne 0 ]
  then echo "Por favor, execute como root!"
  exit
fi

echo "Instalando fonte fira-code..."
apt-get install -y fonts-firacode

echo "Instalando fontes microsoft..."
apt-get install ttf-mscorefonts-installer

echo "Instalando fonte fira-code nerd font..."
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/FiraCode.zip
unzip FiraCode.zip -d ~/.local/share/fonts
fc-cache -fv
