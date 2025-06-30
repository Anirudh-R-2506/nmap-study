# Nmap Usage Guide

This guide summarizes the most important Nmap switches and use cases for beginners.

## Basic Syntax

```
nmap [Scan Type(s)] [Options] {target specification}
```

## Common Scan Types

| Switch | Description            | Example              |
| ------ | ---------------------- | -------------------- |
| -sS    | TCP SYN (stealth) scan | nmap -sS 192.168.1.1 |
| -sT    | TCP connect scan       | nmap -sT 192.168.1.1 |
| -sU    | UDP scan               | nmap -sU 192.168.1.1 |
| -sA    | ACK scan               | nmap -sA 192.168.1.1 |
| -sN    | Null scan              | nmap -sN 192.168.1.1 |

## Target Specification

- Single IP: `nmap 192.168.1.1`
- Range: `nmap 192.168.1.1-10`
- Subnet: `nmap 192.168.1.0/24`
- Hostname: `nmap example.com`

## Port Selection

| Switch | Description          | Example                       |
| ------ | -------------------- | ----------------------------- |
| -p     | Specify ports        | nmap -p 22,80,443 192.168.1.1 |
| -p-    | Scan all 65535 ports | nmap -p- 192.168.1.1          |

## Service and OS Detection

| Switch | Description                                       | Example              |
| ------ | ------------------------------------------------- | -------------------- |
| -O     | OS detection                                      | nmap -O 192.168.1.1  |
| -sV    | Service/version detection                         | nmap -sV 192.168.1.1 |
| -A     | Aggressive scan (OS, version, script, traceroute) | nmap -A 192.168.1.1  |

## Output Options

| Switch | Description           | Example                        |
| ------ | --------------------- | ------------------------------ |
| -oN    | Normal output to file | nmap -oN scan.txt 192.168.1.1  |
| -oX    | XML output            | nmap -oX scan.xml 192.168.1.1  |
| -oG    | Grepable output       | nmap -oG scan.grep 192.168.1.1 |

## Timing and Performance

| Switch     | Description                      | Example              |
| ---------- | -------------------------------- | -------------------- |
| -T0 to -T5 | Timing template (0=slow, 5=fast) | nmap -T4 192.168.1.1 |

## Host Discovery

| Switch | Description                           | Example                 |
| ------ | ------------------------------------- | ----------------------- |
| -sn    | Ping scan (no port scan)              | nmap -sn 192.168.1.0/24 |
| -Pn    | Treat all hosts as online (skip ping) | nmap -Pn 192.168.1.1    |

## Scripting Engine

| Switch   | Description          | Example                        |
| -------- | -------------------- | ------------------------------ |
| -sC      | Run default scripts  | nmap -sC 192.168.1.1           |
| --script | Run specific scripts | nmap --script=vuln 192.168.1.1 |

## Useful Examples

- Scan all devices on a network:
  ```bash
  nmap -sn 192.168.1.0/24
  ```
- Scan top 1000 ports:
  ```bash
  nmap 192.168.1.1
  ```
- Full port scan:
  ```bash
  nmap -p- 192.168.1.1
  ```
- Detect OS and services:
  ```bash
  nmap -A 192.168.1.1
  ```

---
