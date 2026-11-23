###  Generador Automático de PKI (Módulo 8)
Este directorio contiene scripts automatizados para desplegar una infraestructura de clave pública (PKI) desde cero, sin necesidad de guardar llaves privadas en el repositorio.

**Pasos para generar la infraestructura:**
1. Ejecutar `./generar_llaves.sh` (Genera `ca.key` y `servidor.key`).
2. Ejecutar `./generar_certificado_ca.sh` (Crea el certificado autofirmado `ca.crt`).
3. Ejecutar `./peticion_firma.sh` (Genera el CSR del servidor y lo firma con la CA).
4. Ejecutar `./Inspeccion_crt.sh` (Audita los certificados generados).

*(Nota: Asegúrate de tener `.gitignore` configurado para no subir los archivos `.key` generados).*
