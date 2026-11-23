 #!/bin/bash

echo -e "\n\e[35m####Generar Certificado de la Autoridad Certificadora####\e[0m"
read -p "Common Name (CN): " CN
read -p "Organization (O): " O
read -p "Country (C): " C

openssl req -new -x509 -key ca.key -out ca.crt -days 365 -subj "/CN=$CN/O=$O/C=$C"

echo -e "\n\e[35m####CERTIFICADO GENERADO####\e[0m"

