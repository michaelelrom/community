import socket
import sys

def nslookup(domain):
    try:
        ip_address = socket.gethostbyname(domain)
        print(f"Domain: {domain}")
        print(f"IP Address: {ip_address}")
    except socket.gaierror:
        print(f"Failed to resolve domain: {domain}")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        domain = sys.argv[1]
    else:
        domain = input("Enter domain name: ")

    nslookup(domain)
