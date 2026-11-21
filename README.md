# Proyectos de Ciberseguridad y Criptografía - Rayco

Aquí documento los proyectos y scripts que he desarrollado durante mi formación en la Licenciatura en Criptografía y mi entrenamiento autodidacta en ciberseguridad.

Mi enfoque principal es la automatización en entornos Linux, el análisis de vulnerabilidades y la aplicación práctica de la criptografía.

## Estructura del Repositorio

*   **Raíz:** Scripts de auditoría web y bases de datos.
*   **`Proyectos_Anteriores/lab06`:** Herramientas de análisis de logs y simulación de firewalls.
*   **`Proyectos_Anteriores/lab08`:** Infraestructura de Clave Pública (PKI) y servidores seguros.

---

##  Proyectos Destacados

### 1. Auditor de Seguridad Web y SQL Injection (Python + SQL)
*   **Archivos:** `login_vulnerable.py`, `gestor_db.py`
*   **Descripción:** Simulación de un sistema de login local conectado a SQLite. Incluye la demostración práctica de una vulnerabilidad de Inyección SQL (SQLi) para evadir la autenticación, destacando la importancia del saneamiento de entradas en aplicaciones reales.

### 2. Gestión de Logs y Firewall (Bash)
*   **Ruta:** `Proyectos_Anteriores/lab06/`
*   **Descripción:** Scripts diseñados para el análisis de archivos de registro (logs) de servidores web. Incluye la identificación de IPs maliciosas mediante el análisis de códigos de estado HTTP (403, 400) y la creación de una lista negra (blacklist) para simular el bloqueo de accesos.

### 3. Infraestructura de Clave Pública - PKI (OpenSSL + Python)
*   **Ruta:** `Proyectos_Anteriores/lab08/`
*   **Descripción:** Implementación desde cero de una Autoridad Certificadora (CA) local. Generación de llaves privadas, creación de Peticiones de Firma de Certificado (CSR), firma de certificados X.509 y configuración de un servidor HTTPS local en Python validando la cadena de confianza.

### 4. Simulador de Flujo de Ataque y Ransomware (Proyecto Final)
*   **Archivos:** `robo.py`, `guardar.sh`, `check_in.py`, `Comprobar.py`, `auditoria_final.sh`
*   **Descripción:** Simulación de un ataque real. Incluye una vulnerabilidad de Inyección SQL (`robo.py`) para extraer hashes de contraseñas, la automatización de la extracción con expresiones regulares (`guardar.sh`), el cracking de diccionario masivo con John the Ripper (`auditoria_final.sh`) y la verificación de los usuarios comprometidos en la base de datos.

### 5. Proyecto Final: Flujo de Ataque Completo y Auditoría
*   **Archivos:** `robo.py`, `guardar.sh`, `auditoria_final.sh`, `Comprobar.py`, `check_in.py`
*   **Descripción:** Simulación end-to-end de una brecha de seguridad. 
    1. **Vulnerabilidad:** Inyección SQL en un login para extraer la base de datos de empleados.
    2. **Automatización:** Scripts en Bash y expresiones regulares para limpiar y extraer los hashes SHA-256.
    3. **Cracking:** Uso de John the Ripper y un diccionario masivo (RockYou) para romper las contraseñas débiles.
    4. **Validación:** Script en Python para cruzar los hashes rotos con la base de datos y listar a los usuarios comprometidos.
    *   *Nota:* Este proyecto demuestra la importancia del uso de 'salts' en los hashes de contraseñas y la debilidad de las claves comunes.
---
*Nota: Este repositorio está en constante actualización a medida que avanzo en mi formación técnica.*
