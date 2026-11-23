###  Generador Automático de PKI (Módulo 8)
Este directorio contiene scripts automatizados para desplegar una infraestructura de clave pública (PKI) desde cero.

**Pasos para generar la infraestructura:**
1. Ejecutar `./generar_llaves.sh` (Genera `ca.key` y `servidor.key`).
2. Ejecutar `./generar_certificado_ca.sh` (Crea el certificado autofirmado `ca.crt`).
3. Ejecutar `./peticion_firma.sh` (Genera el CSR del servidor y lo firma con la CA).
4. Ejecutar `./Inspeccion_crt.sh` (Audita los certificados generados).

*(Nota: Puede utilizar el programa `https_server.py` para tener el servidor funcionando en segundo plano y luego con `validar_crt.py` comprobar la validez del certificado del Servidor y Mostrar los datos).*
