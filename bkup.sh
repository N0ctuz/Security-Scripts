#!/bin/bash

#cambiar la extension sh por el tipo de archivo que se quiere hacer el backup
for file in /home/n0ctuzbspwn/AprendiendoBashScripting/*.sh;
do
        cp  $file $file.bk
done
