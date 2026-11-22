#!/bin/bash

# Verifica se o pacote figlet está instalado.
if [ "$(command -v figlet)" != "/usr/bin/figlet" ]; then
    echo -e "\n\n"
    echo "#======================================#"
    echo "# O pacote 'figlet' não está instalado!#"
    echo "#======================================#"
    exit
fi

data=$(date +%d\/%m\/%Y)
hora=$(date +%H:%M:%S)

# Mostra o sistema operacional.
echo -e "\n\n"
sistema_operacional=$(grep -e "^NAME" /lib/os-release | \
                      cut -d'=' -f2 | tr -d '"')

figlet -f big "$sistema_operacional"

echo "Nome do PC : $(hostname)"

echo "Data : $data"
echo "Hora : $hora"

