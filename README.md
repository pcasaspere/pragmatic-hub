# pragmatic-hub 🦂

Recull d'eines, recursos i coneixement tècnic seleccionats per en Pere i gestionats per l'EscorBot.

## 📋 Índex de Continguts

### 🚀 Operacions (Comandes i Payloads)
- [⚡ Power Workflows (Automation)](payloads-and-commands/workflows.md)
- [🎯 Web Exploitation Payloads](payloads-and-commands/web-exploitation.md)
- [🔐 Active Directory Exploitation](payloads-and-commands/active-directory.md)
- [⚙️ Linux Security & Hardening](payloads-and-commands/linux-and-hardening.md)

### 🛠️ Eines i Recursos per Categoria
- [🛡️ Offensive Security (Pentesting & Bug Bounty)](#️-offensive-security-pentesting--bug-bounty)
- [🏗️ Industrial Control Systems (ICS/OT)](#️-industrial-control-systems-icsot)
- [⚙️ Infrastructure, Linux & Hardening](#️-infrastructure-linux--hardening)
- [☁️ Cloud Security](#️-cloud-security)
- [🔍 Code Analysis & SAST](#-code-analysis--sast)
- [🕵️ Forensics & Network Analysis](#️-forensics--network-analysis)
- [🌍 OSINT & Threat Intelligence](#-osint--threat-intelligence)
- [📚 Knowledge Bases & Learning](#-knowledge-bases--learning)
- [🤖 AI for Cybersecurity](#-ai-for-cybersecurity)

---

## 🛡️ Offensive Security (Pentesting & Bug Bounty)
- **[Amass](https://github.com/owasp-amass/amass)**: Mapeig profund de la superfície d'atac.
- **[Subfinder](https://github.com/projectdiscovery/subfinder)**: Enumeració de subdominis ràpida.
- **[Nuclei](https://github.com/projectdiscovery/nuclei)**: Escàner basat en plantilles.
- **[Katana](https://github.com/projectdiscovery/katana)**: Crawler d'última generació.
- **[Sliver](https://github.com/BishopFox/sliver)**: Framework de C2 Open Source.
- **[ffuf](https://github.com/ffuf/ffuf)**: Fuzzer web ràpid escrit en Go.

## 🏗️ Industrial Control Systems (ICS/OT)
- **[Awesome Industrial Protocols](https://github.com/Orange-Cyberdefense/awesome-industrial-protocols)**: Recull de protocols industrials i eines d'anàlisi.
- **[Awesome ICS Security](https://github.com/hslatman/awesome-industrial-control-system-security)**: Llista curada de recursos relacionats amb la seguretat de sistemes de control industrial.
- **[Grassmarlin](https://github.com/nsacyber/grassmarlin)**: Eina de la NSA per a la descoberta de xarxes industrials i inventari de dispositius.
- **[S7Scan](https://github.com/moki-ics/s7scan)**: Escàner per a dispositius Siemens S7.

## ⚙️ Infrastructure, Linux & Hardening
- **[RHEL 9 Security Hardening](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/9/html/security_hardening/index)**: Guia oficial de Red Hat per assegurar sistemes RHEL 9.
- **[Exploit Notes](https://exploit-notes.hdks.org/)**: Notes detallades sobre explotació, CTFs i seguretat ofensiva.
- **[Lynis](https://cisofy.com/lynis/)**: Eina d'auditoria de seguretat per a sistemes Unix/Linux.
- **[SSH Monitor](scripts/python/ssh_monitor.py)**: Script personalitzat per monitoritzar accessos SSH.
- **[pspy](https://github.com/DominicBreuker/pspy)**: Monitorització de processos en Linux sense permisos de root.
- **[nmap](https://nmap.org/)**: L'estàndard per a l'exploració de xarxa i auditoria de seguretat.
- **[exiftool](https://exiftool.org/)**: Eina per llegir, escriure i editar metadades en una gran varietat de fitxers.

## ☁️ Cloud Security
- **[Prowler](https://github.com/prowler-cloud/prowler)**: Eina d'auditoria i hardening per a AWS, Azure i GCP.
- **[CloudFox](https://github.com/BishopFox/cloudfox)**: Eina per ajudar a trobar vectors d'atac en infraestructures cloud.
- **[Pacu](https://github.com/RhinoSecurityLabs/pacu)**: Framework d'explotació per a AWS.
- **[cloud_enum](https://github.com/initstring/cloud_enum)**: Eina per enumerar recursos públics en els principals proveïdors de cloud.

## 🔍 Code Analysis & SAST
- **[Semgrep](https://github.com/semgrep/semgrep)**: Motor d'anàlisi estàtica de codi ràpid i multillenguatge.
- **[Bandit](https://bandit.readthedocs.io/en/latest/)**: Eina dissenyada per trobar problemes de seguretat comuns en el codi Python.
- **[SonarQube](https://docs.sonarsource.com/sonarqube/latest/setup-and-upgrade/install-the-server/installing-sonarqube-from-docker/)**: Plataforma líder per a la inspecció contínua de la qualitat i seguretat del codi.
- **[Brakeman](https://brakemanscanner.org/)**: Escàner de vulnerabilitats d'anàlisi estàtica dissenyat específicament per a aplicacions Ruby on Rails.
- **[Trivy](https://github.com/aquasecurity/trivy)**: Escàner de vulnerabilitats per a contenidors i artefactes.
- **[trufflehog](https://github.com/trufflesecurity/trufflehog)**: Busca secrets i claus d'API filtrades en repositoris i sistemes de fitxers.

## 🕵️ Forensics & Network Analysis
- **[NetworkMiner](https://www.netresec.com/?page=Networkminer)**: Eina d'anàlisi forense de xarxa per a Windows i Linux.
- **[ForensicsTools](https://github.com/mesquidar/ForensicsTools)**: Recull d'eines per a anàlisi forense digital.

## 🌍 OSINT & Threat Intelligence
- **[SecurityTrails](https://securitytrails.com/)**: Plataforma per a l'anàlisi de dades de dominis i IPs (ideal per consultar històrics d'IPs).
- **[crt.sh](https://crt.sh/)**: Cercador de certificats SSL/TLS per enumerar subdominis a través de Certificate Transparency.
- **[Hunter.io](https://hunter.io/)**: Eina per trobar i verificar adreces de correu electrònic associades a un domini.
- **[Criminal IP](https://www.criminalip.io/)**: Cercador de CTI que permet trobar dispositius exposats i vulnerabilitats.
- **[urlscan.io](https://urlscan.io/)**: Escàner de seguretat per a llocs web que analitza el comportament de navegació i recursos carregats.
- **[whois](https://www.whois.com/)**: Protocol per consultar bases de dades que emmagatzemen els usuaris registrats d'un recurs d'Internet.
- **[dig](https://linux.die.net/man/1/dig)**: Eina de línia d'ordres per a interrogacions a servidors de noms DNS.
- **[theHarvester](https://github.com/laramies/theHarvester)**: Eina per a la recol·lecció de correus, subdominis, hosts, noms d'empleats i ports oberts.
- **[sherlock](https://github.com/sherlock-project/sherlock)**: Busca comptes de xarxes socials per nom d'usuari en centenars de llocs web.
- **[dnstwist](https://github.com/elceef/dnstwist)**: Motor de permutació de dominis per detectar typosquatting i phishing.
- **[recon-ng](https://github.com/lanmaster53/recon-ng)**: Framework complet de reconeixement web escrit en Python.
- **[holehe](https://github.com/megadose/holehe)**: Comprova si un correu electrònic està utilitzat en més de 120 llocs web.
- **[waybackurls](https://github.com/tomnomnom/waybackurls)**: Accepta dominis i recupera totes les URLs que la Wayback Machine coneix per a ells.
- **[social-analyzer](https://github.com/qeeqbox/social-analyzer)**: API i CLI per analitzar i buscar perfils en xarxes socials.
- **[h8mail](https://github.com/khast3x/h8mail)**: Eina d'anàlisi de filtracions de correu electrònic i cerca de contrasenyes per a OSINT.

## 📚 Knowledge Bases & Learning
- **[HackTricks](https://book.hacktricks.wiki/)**: La biblia de la seguretat ofensiva i el pentesting.
- **[Pentest Everything](https://viperone.gitbook.io/pentest-everything)**: Guia completa de pentesting i Bug Bounty.
- **[Pentesting Notes (Incendium)](https://notes.incendium.rocks/pentesting-notes/)**: Recull de notes de camp per a pentesting.
- **[ADMinions](https://adminions.ca/)**: Recursos i eines centrades en l'explotació d'Active Directory.
- **[The Hacker Recipes](https://www.thehacker.recipes/)**: Receptari d'atacs contra Active Directory i xarxes Windows.

## 🤖 AI for Cybersecurity
- **[PentestGPT](https://github.com/GreyD00r/PentestGPT)**: Agent basat en IA per guiar en processos de pentesting.
- **[Strix](https://github.com/usestrix/strix)**: Framework de seguretat ofensiva assistit per IA.
