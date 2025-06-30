# Nmap Study Guide

## What is Nmap?

Nmap (Network Mapper) is a free and open-source tool for network discovery and security auditing. It is widely used by cybersecurity professionals and network administrators to map networks, discover hosts and services, and identify vulnerabilities.

## Why Use Nmap in Network Security?

- **Network Discovery:** Identify devices and services running on a network.
- **Vulnerability Assessment:** Detect open ports and potential security risks.
- **Inventory Management:** Keep track of network assets.
- **Penetration Testing:** Simulate attacks to find weaknesses before attackers do.

## Installation Instructions

### Windows

1. Download the latest installer from [nmap.org/download.html](https://nmap.org/download.html).
2. Run the installer and follow the prompts.
3. Open Command Prompt and type `nmap` to verify installation.

### Linux (Debian/Ubuntu)

```bash
sudo apt update
sudo apt install nmap
```

### macOS

```bash
brew install nmap
```

Or download from [nmap.org/download.html](https://nmap.org/download.html).

## Common Usage Commands

| Command                      | Description                                       |
| ---------------------------- | ------------------------------------------------- |
| `nmap 192.168.1.1`           | Scan a single host                                |
| `nmap 192.168.1.0/24`        | Scan an entire subnet                             |
| `nmap -p 80,443 192.168.1.1` | Scan specific ports                               |
| `nmap -sS 192.168.1.1`       | Stealth (SYN) scan                                |
| `nmap -O 192.168.1.1`        | OS detection                                      |
| `nmap -sV 192.168.1.1`       | Service/version detection                         |
| `nmap -A 192.168.1.1`        | Aggressive scan (OS, version, script, traceroute) |

## Screenshots

![Nmap Scan 1](screenshots/Screenshot 2025-07-01 at 12.59.37 AM.png)
_Figure: Example of a basic Nmap scan._

![Nmap Scan 2](screenshots/Screenshot 2025-07-01 at 1.01.33 AM.png)
_Figure: Example of a service/version detection scan._

![Nmap Scan 3](screenshots/Screenshot 2025-07-01 at 1.02.34 AM.png)
_Figure: Example of an aggressive scan with OS and script detection._

## Sample Use Case: Scanning a Local Network

Suppose you want to discover all devices on your home network:

```bash
nmap -sn 192.168.1.0/24
```

This command will perform a ping scan to list all active hosts.

For a more advanced scan (e.g., scanning a Metasploitable VM):

```bash
nmap -A 192.168.56.101
```

This will detect OS, services, and potential vulnerabilities.

## Troubleshooting & Common Issues

- **Permission Denied:** Some scans require root/administrator privileges. Use `sudo` on Linux/macOS.
- **Firewall Blocking:** Firewalls may block Nmap probes. Try different scan types or check firewall settings.
- **No Output:** Ensure the target is online and reachable.

---
