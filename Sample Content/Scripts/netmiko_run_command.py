#!/usr/local/bin/python3
from netmiko import Netmiko
import sys

def main():
    device = {
        "device_type": sys.argv[1],
        "ip": sys.argv[2],
        "port": sys.argv[3],
        "username": sys.argv[4],
        "password": sys.argv[5],
    }

    with Netmiko(**device) as net_connect:
        output = net_connect.send_command(sys.argv[6])
        print(output)

if __name__ == "__main__":
    main()
