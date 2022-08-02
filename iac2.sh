#! /bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando dependências..."

apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
cp -R * /var/www/html/

echo "Fim."
