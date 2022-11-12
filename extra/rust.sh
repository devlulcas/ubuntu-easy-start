#!/bin/bash

echo "Instalando o Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Instalando o bat..."
cargo install --locked bat
echo "alias cat='bat'" >> ~/.zshrc
