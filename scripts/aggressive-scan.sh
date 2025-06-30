#!/bin/bash
# Aggressive Nmap scan script
# Usage: ./aggressive-scan.sh <target>

if [ -z "$1" ]; then
  echo "Usage: $0 <target>"
  exit 1
fi

echo "Running aggressive scan on $1..."
sudo nmap -A $1 