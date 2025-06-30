#!/bin/bash
# Network discovery script
# Usage: ./network-discovery.sh <subnet>

if [ -z "$1" ]; then
  echo "Usage: $0 <subnet> (e.g., 192.168.1.0/24)"
  exit 1
fi

echo "Discovering hosts on $1..."
nmap -sn $1 