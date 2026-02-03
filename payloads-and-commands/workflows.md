# ⚡ Power Workflows (Automation)

Recull de *one-liners* optimitzats per a operacions de seguretat.

## 🔍 Fase 1: Recon & Enumeration
- **Pipeline:** `subfinder -d DOMINI -silent | naabu -silent | httpx -silent | nuclei -t cve/`
- **Takeovers:** `subfinder -d DOMINI -silent | nuclei -t takeovers/`

## 🌐 Fase 2: Web & API Hunting
- **Secrets JS:** `subfinder -d DOMINI -silent | httpx -silent | katana -d 5 -jc | nuclei -t exposures/`
- **Fuzzing Paràmetres:** `katana -u URL -d 5 -silent -em apis | uro | ffuf -w - -u URL/FUZZ`

## 🚀 Fase 3: Exploitation & Post-Recon
- **SSRF Metadata:** `cat urls.txt | httpx -path "/latest/meta-data/iam/security-credentials/"`
- **SSTI Fuzzing:** `cat urls.txt | nuclei -t vulnerabilities/generic/ssti-fuzz.yaml`

## ⏫ Fase 5: Linux Privilege Escalation
Comandes ràpides un cop tens una shell (Post-Exploitation).

- **Buscar binaris SUID:** `find / -perm -4000 -type f 2>/dev/null`
- **Capabilities d'arxius:** `getcap -r / 2>/dev/null`
- **Crontab visible:** `cat /etc/crontab`
- **Passwords en config:** `grep -rI "pass" /var/www/ 2>/dev/null`
- **Docker Escape check:** `ls -la /.dockerenv`

## 🛡️ Fase 4: WAF & Infrastructure
- **Origin IP:** `asnmap -i "ASN" -silent | naabu -silent | httpx -title`
- **403 Bypass:** `cat 403.txt | httpx -H "X-Forwarded-For: 127.0.0.1" -mc 200`
