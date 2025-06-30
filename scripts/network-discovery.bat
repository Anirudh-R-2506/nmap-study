@echo off
REM Network discovery script for Windows
REM Usage: network-discovery.bat <subnet>

if "%1"=="" (
  echo Usage: %0 ^<subnet^> (e.g., 192.168.1.0/24)
  exit /b 1
)

echo Discovering hosts on %1...
nmap -sn %1 