#!/bin/bash

# Declarando variables

echo "Hola, ingresa la IP o URL para un escaneo de puertos simple"

read host

sleep 2

echo "Realizando el escaneo simple"

sudo nmap -sS -p- --open --min-rate=4000 $host -oN puertos.txt

# Comprobacion de comandos, en las condicionales if se aplica sin [] para comandos ya que e>
# En caso que fuera algo como if [ "$nombre" == "nombrex"] si se puede ocupar

if grep -iq "TCP" puertos.txt; then
        echo "Puertos abiertos encontrados"
        sleep 3
        cat puertos.txt
else 
        echo "No se encontraron puertos abiertos, finalizando"
fi

sudo rm puertos.txt
