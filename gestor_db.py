import sqlite3

conexion=sqlite3.connect('../../../SQL/escuela.db')
cursor=conexion.cursor()
print("---REGISTRO DE ALUMNOS---")
nombre=input("\nNombre: ")
edad=input("Edad: ")
sexo=input("Sexo: ")

query= "INSERT INTO alumnos VALUES(?,?,?)"
cursor.execute(query,(nombre,edad,sexo))

conexion.commit()

print(f"Alumno {nombre} añadido exitosamente.")

cursor.execute("SELECT * FROM alumnos")
filas=cursor.fetchall()

print("---LISTA ACTUAL DE ALUMNOS---")
for fila in filas:
	print(fila)

conexion.close()
