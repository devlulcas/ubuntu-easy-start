#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Por favor, execute como root!"
  exit
fi

echo "Instalando atualizações..."
apt-get update
apt-get upgrade -y

echo "-- Linguagens --"

echo "Deseja instalar o PHP e seus trecos? (y/n)"
read php

if ( [ $php = "y" ] || [ $php = "Y" ] )
then
  source /extra/php.sh
fi

echo "Deseja instalar o Golang? (y/n)"
read golang

if ( [ $golang = "y" ] || [ $golang = "Y" ] )
then
  source /extra/golang.sh
fi

echo "Deseja instalar o NodeJS e seus trecos? (y/n)"
read node

if ( [ $node = "y" ] || [ $node = "Y" ] )
then
  source /extra/node.sh
fi

echo "Deseja instalar o Rust? (y/n)"
read rust

if ( [ $rust = "y" ] || [ $rust = "Y" ] )
then
  source /extra/rust.sh
fi

echo "Deseja instalar o Java e seus trecos? (y/n)"
read java

if ( [ $java = "y" ] || [ $java = "Y" ] )
then
  source /extra/java.sh
fi

echo "-- Ferramentas --"

echo "Deseja instalar o Docker e seus trecos? (y/n)"
read docker

if ( [ $docker = "y" ] || [ $docker = "Y" ] )
then
  source /extra/docker.sh
fi

echo "Deseja instalar o Postman ou Insomnia? (p/i/n)"
read rest

if ( [ $rest = "p" ] || [ $rest = "P" ] )
then
  snap install postman -y
elif ( [ $rest = "i" ] || [ $rest = "I" ] )
then
  snap install insomnia -y
fi

echo "-- Editores de texto e IDEs --"

echo "Deseja instalar o Neovim e seus trecos? (y/n)"
read neovim

if ( [ $neovim = "y" ] || [ $neovim = "Y" ] )
then
  source /extra/neovim.sh
fi

echo "Deseja instalar o VSCode? (y/n)"
read vscode

if ( [ $vscode = "y" ] || [ $vscode = "Y" ] )
then
  source /extra/vscode.sh
fi

echo "-- Navegadores --"

echo "Deseja instalar o Brave? (y/n)"
read brave

if ( [ $brave = "y" ] || [ $brave = "Y" ] )
then
  source /extra/brave.sh
fi

echo "-- Outros --"

echo "Deseja instalar o Okular? (y/n)"
read okular

if ( [ $okular = "y" ] || [ $okular = "Y" ] )
then
  source /extra/okular.sh
fi



echo ">>> Fim da instalação! Isso é tudo por enquanto :)"