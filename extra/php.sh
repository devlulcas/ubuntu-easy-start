#!/bin/bash

echo "Instalando o PHP..."
apt-get install -y php

echo "Instalando o extensões PHP..."
apt-get install -y php8.1-cli php8.1-common php8.1-zip php8.1-gd php8.1-mbstring php8.1-curl php8.1-xml php8.1-bcmath

echo "Instalando extensões para banco de dados do PHP..."
echo "> MySQL - PSQL - SQLite"
apt-get install -y php8.1-mysql php8.1-pgsql php8.1-sqlite3

# Instalar o composer no ubuntu 22.04
echo "Instalando o composer..."

curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm /tmp/composer-setup.php
