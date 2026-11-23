#!/bin/bash

echo -e "\n\e[36m___REVISAR CERTIFICADO___\e[0m"
read -p "Nombre del Archivo: " arc
openssl x509 -in $arc -text -noout

