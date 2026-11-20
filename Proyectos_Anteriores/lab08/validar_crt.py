from cryptography import x509
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives import hashes

with open("servidor.crt", "rb") as f:
	crt_data=f.read()

cert=x509.load_pem_x509_certificate(crt_data, default_backend())
print("---INFORMACIÓN DEL CERTIFICADO---")
print(f"Sujeto: {cert.subject}")
print(f"Emisor: {cert.issuer}")
print(f"Válido desde: {cert.not_valid_before_utc}")
print(f"Válido hasta: {cert.not_valid_after_utc}")
print(f"Hash SHA-256: {cert.fingerprint(hashes.SHA256()).hex()}")

