#!/bin/bash

echo "Script de provisionamento de um Servidor Web (Apache)"

echo "Atualizando o sistema..."
apt-get update
apt-get upgrade -y

echo "Instalando os softwares necessários..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Instalando e copiando os arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio-main/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/
