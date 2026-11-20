#!/bin/bash
read -p "Introduzca la IP: " ip_usuario
if grep -q -w "$ip_usuario" blacklist.txt; then
echo -e "\e[31m[ALERTA] ¡¡ACCESO DENEGADO!!  IP: $ip_usuario está en la lista negra.\e[0m" 
else
echo -e "\e[32m[OK] ACCESO PERMITIDO IP: $ip_usuario confiable.\e[0m"
fi
