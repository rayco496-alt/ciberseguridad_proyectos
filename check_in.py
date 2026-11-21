import sqlite3
from getpass import getpass
import hashlib

conexion=sqlite3.connect('empleados.db')
cursor=conexion.cursor()

print("--Registro de Usuarios--")
usuario=input("Nombre de Usuario: ")
contraseña=getpass("Contraseña: ")
hash=hashlib.sha256(contraseña.encode()).hexdigest()

pedido="INSERT INTO staff (usuario,hash_de_contraseña) VALUES(?,?)"
cursor.execute(pedido,(usuario,hash))

conexion.commit()

print(f"\033[32mUsuario {usuario} añadido a la Base de Datos.\033[0m")

conexion.close()
