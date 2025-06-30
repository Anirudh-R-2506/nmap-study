#!/bin/bash
# Simple Nmap scan script
# Usage: ./simple-scan.sh <target>

if [ -z "$1" ]; then
  echo "Usage: $0 <target>"
  exit 1
fi

echo "Scanning $1..."
nmap $1 