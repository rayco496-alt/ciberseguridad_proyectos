#!/bin/bash

echo -e "\n\e[33m***GENERANDO PETICIÓN DE FIRMA AL SERVIDOR***\e[0m"
read -p "Nombre del Servidor: " CN
openssl req -new -key servidor.key -out servidor.csr -subj "/CN=$CN"
find -name servidor.csr

echo -e "\n\e[33m***PETICIÓN GENERADA---FIRMANDO CERTIFICADO...***\e[0m"
openssl x509 -req -in servidor.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out servidor.crt -days 365
find -name servidor.crt

echo -e "\n\e[33m---PROCESO COMPLETADO---\e[0m"
