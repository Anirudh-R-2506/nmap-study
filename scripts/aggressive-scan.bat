@echo off
REM Aggressive Nmap scan script for Windows
REM Usage: aggressive-scan.bat <target>

if "%1"=="" (
  echo Usage: %0 ^<target^>
  exit /b 1
)

echo Running aggressive scan on %1...
nmap -A %1 