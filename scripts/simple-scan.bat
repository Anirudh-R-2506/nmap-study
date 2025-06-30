@echo off
REM Simple Nmap scan script for Windows
REM Usage: simple-scan.bat <target>

if "%1"=="" (
  echo Usage: %0 ^<target^>
  exit /b 1
)

echo Scanning %1...
nmap %1 