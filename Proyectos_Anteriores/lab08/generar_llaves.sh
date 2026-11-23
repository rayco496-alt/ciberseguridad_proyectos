#!/bin/bash

echo -e "\e[34m===Generando Llaves===\e[0m"
sleep 1
echo -e "\e[33m---Llave de la Autoridad Certificadora---\e[0m"
openssl genpkey -algorithm RSA -out ca.key -pkeyopt rsa_keygen_bits:4096
find -name ca.key
sleep 1
echo -e "\n\e[33m---Llave del Servidor---\e[0m"
openssl genpkey -algorithm RSA -out servidor.key -pkeyopt rsa_keygen_bits:2048
find -name servidor.key

echo -e "\n\e[34m===LLAVES GENERADAS===\e[0m"
