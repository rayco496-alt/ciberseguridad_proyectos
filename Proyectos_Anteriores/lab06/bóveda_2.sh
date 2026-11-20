#!/bin/bash
set -e
echo "----Programa para cifrar mensajes----"
if [ ! -d ~/Criptolab/Senior/lab06/Bóveda_segura_2 ]; then
mkdir ~/Criptolab/Senior/lab06/Bóveda_segura_2
fi
read -p "Nombre del Archivo: " archivo
mkdir ~/Criptolab/Senior/lab06/Bóveda_segura_2/"$archivo"
chmod 700 ~/Criptolab/Senior/lab06/Bóveda_segura_2/"$archivo"
touch ~/Criptolab/Senior/lab06/Bóveda_segura_2/"$archivo"/"$archivo".txt
read -p "Mensaje: " mensaje 
if [ -z "$mensaje" ]; then
echo "Error: el mensaje no puede estar vacío."
exit 1
fi
echo -n "$mensaje" > ~/Criptolab/Senior/lab06/Bóveda_segura_2/"$archivo"/"$archivo".txt
read -s -p "Introduce la clave: " clave 
echo ""
openssl enc -aes-256-cbc -pbkdf2 -salt -in ~/Criptolab/Senior/lab06/Bóveda_segura_2/"$archivo"/"$archivo".txt -out ~/Criptolab/Senior/lab06/Bóveda_segura_2/"$archivo"/"$archivo".bin -pass pass:"$clave"
rm ~/Criptolab/Senior/lab06/Bóveda_segura_2/"$archivo"/"$archivo".txt
~/Criptolab/Senior/lab06/Bóveda_segura_2/"$archivo"/"$archivo".bin | openssl dgst -sha256 > ~/Criptolab/Senior/lab06/Bóveda_segura_2/"$archivo"/"$archivo"_.hash
cut -d "=" -f 2 ~/Criptolab/Senior/lab06/Bóveda_segura_2/"$archivo"/"$archivo"_.hash > ~/Criptolab/Senior/lab06/Bóveda_segura_2/"$archivo"/"$archivo".hash 
gpg --pinentry-mode loopback --passphrase "rayco"  --detach-sign -u "Rayco" ~/Criptolab/Senior/lab06/Bóveda_segura_2/"$archivo"/"$archivo".hash
rm ~/Criptolab/Senior/lab06/Bóveda_segura_2/"$archivo"/"$archivo"_.hash
echo "Listo...."
sleep 1
echo "Mostrando resultados...."
sleep 1
echo "-Se creó un archivo llamado $archivo.txt"
sleep 1
echo "-Se copió en ese archivo el mensaje del Usuario"
sleep 1
echo "-Se cifró el archivo con AES-256 en modo CBC usando la Contraseña del Usuario."
sleep 1
echo "-Se eliminó el mensaje Original"
sleep 1
echo "-Se generó un hash del archivo cifrado con SHA-256"
sleep 1
echo "-Se firmó dicho hash con la llave privada del creador de este script, Rayco"
sleep 1
echo "-FIN"
