import sqlite3

conexion=sqlite3.connect('hackme.db')
cursor=conexion.cursor()

cursor.execute("CREATE TABLE IF NOT EXISTS usuarios(nombre TEXT,contraseña TEXT)")
cursor.execute("DELETE FROM usuarios")
cursor.execute("INSERT INTO usuarios VALUES('admin','super_secreto')")
conexion.commit()

print("---LOGIN SEGURO---")
nombre=input("Nombre: ")
contraseña=input("Contraseña: ")

query=f"SELECT * FROM usuarios WHERE nombre='{nombre}' AND contraseña='{contraseña}'"

print(f"---CONSULTA ENVIADA---\n{query}")

cursor.execute(query)
resultado=cursor.fetchone()

if resultado:
	print(f"Bienvenido, has entrado como: {resultado[0]}")
else:
	print("Acceso Denegado")
