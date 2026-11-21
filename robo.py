import sqlite3
import sys

conexion=sqlite3.connect('empleados.db')
cursor=conexion.cursor()

print("--LOGIN--")
usuario=str(sys.argv[1])
print(f"Usuario: {usuario}")

pedido=f"SELECT * FROM staff WHERE usuario='{usuario}'"

cursor.execute(pedido)
print(cursor.fetchall())
