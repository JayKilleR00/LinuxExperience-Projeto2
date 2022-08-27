#!/bin/bash

echo "Atualizando e instalando os serviços..."

apt-get update
apt-get upgrade -y
apt install apache2 -y
apt install unzip -y


echo "Baixando aplicação web do GitHub..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
