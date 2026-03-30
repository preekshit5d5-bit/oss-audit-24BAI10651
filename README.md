# OSS Audit — Git
**Student:** Preekshit  
**Registration Number:** 24BAI10651  
**Course:** Open Source Software  
**Chosen Software:** Git (GPL v2)

---

## Scripts

| Script | File | Description |
|--------|------|-------------|
| 1 | script1_system_identity.sh | Displays Linux system info as a welcome screen |
| 2 | script2_package_inspector.sh | Checks if Git is installed and prints package details |
| 3 | script3_disk_auditor.sh | Audits key system directories for size and permissions |
| 4 | script4_log_analyzer.sh | Reads a log file and counts keyword matches |
| 5 | script5_manifesto_generator.sh | Generates a personalised open source philosophy statement |

---

## How to Run

### Requirements
- Ubuntu/Debian Linux
- Git installed (`sudo apt install git`)
- Bash shell

### Steps
```bash
# Clone the repository
git clone https://github.com/preekshit5d5-bit/oss-audit-24BAI10651
cd oss-audit-24BAI10651

# Make scripts executable
chmod +x scripts/*.sh

# Run Script 1
bash scripts/script1_system_identity.sh

# Run Script 2
bash scripts/script2_package_inspector.sh

# Run Script 3
bash scripts/script3_disk_auditor.sh

# Run Script 4 (provide a log file path)
bash scripts/script4_log_analyzer.sh /var/log/syslog error

# Run Script 5
bash scripts/script5_manifesto_generator.sh
```

---


## Dependencies
- `lsb_release` — for distro name (install via `sudo apt install lsb-release`)
- `git` — the software being audited
- `du`, `ls`, `df` — standard Linux utilities (pre-installed)

