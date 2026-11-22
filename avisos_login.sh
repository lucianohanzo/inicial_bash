#!/bin/bash

# Verifica se o pacote figlet está instalado.
if [ $(command -v figlet) != "/usr/bin/figlet" ]; then
    echo "Pacote 'figlet' não está instalado!"
    exit
fi

data=$(date +%d\/%m\/%Y)
hora=$(date +%H:%M:%S)

# Mostra o sistema operacional.
sistema_operacional=$(grep -e "^NAME" /lib/os-release | \
                      cut -d'=' -f2 | tr -d '"')

figlet -f big "$sistema_operacional"

echo "Nome do PC : $(hostname)"

echo "Data : $data"
echo "Hora : $hora"

