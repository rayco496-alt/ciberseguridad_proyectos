import http.server
import ssl
puerto=8443
server_address=('',puerto)
httpd=http.server.HTTPServer(server_address, http.server.SimpleHTTPRequestHandler)
context=ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
context.load_cert_chain(certfile="servidor.crt", keyfile="servidor.key")
httpd.socket=context.wrap_socket(httpd.socket, server_side=True)
print(f"\n Servidor HTTP corriendo en el puerto {puerto}...")
print("\nPresione Crtl + C para salir.")
httpd.serve_forever()
