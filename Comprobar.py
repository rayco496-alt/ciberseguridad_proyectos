import sqlite3
import sys
import hashlib

conexion=sqlite3.connect('empleados.db')
cursor=conexion.cursor()

print("---COMPROBANDO HASHES ROTOS---")
hashes=sys.argv[1]
pedido="SELECT usuario FROM staff WHERE hash_de_contraseña=?"
print("Usuarios Vulnerados:")
with open(hashes, 'r') as texto:
	for linea in texto:
		limpio=linea.strip()
		hash=hashlib.sha256(limpio.encode()).hexdigest()
		cursor.execute(pedido,(hash,))
		resultado=cursor.fetchall()
		if resultado:
			for fila in resultado:
				print(f"El Usuario {fila[0]} tiene una contraseña vulnerada.")
conexion.close()
