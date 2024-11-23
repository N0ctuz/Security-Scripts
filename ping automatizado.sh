#!/bin/bash
echo "Ingresa la IP o URL"
host=$1
# En la parte de host se puede poner host=$1 (de manera externa al ejecutar hace que acepte>
echo "Ingresaste la IP o URL: $host"

ping -c 1 $host > ping.log

for escaneo in $(seq 60 70); do
        if [  $(grep ttl=$escaneo ping.log -c) -eq 1 ]; then
                sleep 1 
                echo "El Sistema Operativo es Linux"
fi
done

for escaneo in $(seq 110 130); do
        if [ $(grep ttl=$escaneo ping.log -c) -eq 1 ]; then 
                echo "El Sistema Operativo es Windows"
fi
done

rm ping.log
