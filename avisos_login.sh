#!/bin/bash

# Mostra o sistema operacional.
sistema_operacional=$(grep -e "^NAME" /lib/os-release | cut -d'=' -f2 | tr -d '"')

figlet -f big "$sistema_operacional"

