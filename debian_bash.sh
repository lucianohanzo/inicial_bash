#!/bin/bash

# Atualização dos repositórios.
apt update

# Instalação de programas básicos.
apt install -y sudo curl resolvconf vim jq nmap

# Instalação dos visualizador do sistema.
apt install -y fastfetch

# Cria letras grandes no sistema.
apt install -y figlet

# Visualiza o sistema.
fastfetch


#
