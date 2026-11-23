#!/bin/bash
set -e
dir=/data/data/com.termux/files/home/sd/Programación/rockyou.txt
echo -e "\e[32mComenzando Extracción de Contraseñas\e[0m"
cd ~/Criptolab/Cursos/Termux/Senior/lab09/john/run/
./john --wordlist=$dir --format=raw-sha256 ../../../lab12/hashes_robados.txt

./john --show --format=raw-sha256 ../../../lab12/hashes_robados.txt | cut -d ":" -f 2,3 > ../../../lab12/hashes_rotos.txt


