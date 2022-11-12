#!/bin/bash

echo "Instalando o NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

source ~/.zshrc

echo "Instalando o NodeJS..."
nvm install node

echo "Deseja instalar o PNPM? (y/n)"
read pnpm

if [ $pnpm = "y" ]
then
  echo "Instalando o PNPM..."
  curl -fsSL https://get.pnpm.io/install.sh | sh -
fi
