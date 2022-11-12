#!/bin/bash

echo "Instalando neovim..."
apt-get install neovim -y
echo "alias vim='nvim'" >> ~/.zshrc
echo "alias vi='nvim'" >> ~/.zshrc