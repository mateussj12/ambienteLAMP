#!/bin/bash

echo "Hello World"

echo "Instalando pacotes..."
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vim

echo "Configurando alguns DNS..."
file="/etc/hosts"
(
echo "192.168.10.1      ansible-lab"
echo "192.168.10.2      maquina01"
echo "192.168.10.3      maquina02"
) >> $file


