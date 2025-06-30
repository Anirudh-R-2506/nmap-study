# Nmap Use Case: Scanning a Metasploitable VM

## Scenario

You have a vulnerable machine at IP `192.168.36.91`. You want to identify open ports, running services, and possible vulnerabilities using Nmap.

## Step 1: Basic Host Discovery

```bash
nmap -sn 192.168.36.91
```

_Expected output: Host is up (shows latency)._

## Step 2: Service and Version Detection

```bash
nmap -sV 192.168.36.91
```

_Expected output: List of open ports and detected services/versions._

## Step 3: Aggressive Scan

```bash
sudo nmap -A 192.168.36.91
```

_Expected output: OS details, service versions, script results, and traceroute._

## Example Output (Summary)

- Open ports: 21/tcp (FTP), 22/tcp (SSH), 80/tcp (HTTP), etc.
- Detected OS: Linux (details may vary)
- Service versions: vsftpd 2.3.4, Apache httpd 2.2.8, etc.
- Script results: Possible vulnerabilities or misconfigurations

---

_This use case demonstrates how Nmap can be used to assess the security posture of a vulnerable machine in a safe, educational environment._
