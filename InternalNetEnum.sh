#!/bin/bash
echo "======ESTE SCRIPT ES PARA ENCONTRAR HOSTS INTERNOS========"

echo "Ingresa la IP para encontrar hosts dentro de la red"

read host

sudo arp-scan $host 2>/dev/null > results.txt

sleep 4
# cambiar el valor de 192 por el numero de clasificacion de la red por los hosts privados
if [ -f results.txt ] && grep -q "192" results.txt; then
        echo "Hosts encontrados, mostrandolos..."
        awk '{print $1,$2}' results.txt | sort | uniq
        echo " IP             MAC"
else
        echo "No se encontraron hosts"
fi

