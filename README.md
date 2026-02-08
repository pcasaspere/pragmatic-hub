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
| Eina | Descripció |
| :--- | :--- |
| **[Amass](https://github.com/owasp-amass/amass)** | Mapeig profund de la superfície d'atac. |
| **[Subfinder](https://github.com/projectdiscovery/subfinder)** | Enumeració de subdominis ràpida. |
| **[Nuclei](https://github.com/projectdiscovery/nuclei)** | Escàner basat en plantilles. |
| **[Katana](https://github.com/projectdiscovery/katana)** | Crawler d'última generació. |
| **[Sliver](https://github.com/BishopFox/sliver)** | Framework de C2 Open Source. |
| **[ffuf](https://github.com/ffuf/ffuf)** | Fuzzer web ràpid escrit en Go. |

## 🏗️ Industrial Control Systems (ICS/OT)
| Eina | Descripció |
| :--- | :--- |
| **[Awesome Industrial Protocols](https://github.com/Orange-Cyberdefense/awesome-industrial-protocols)** | Recull de protocols industrials i eines d'anàlisi. |
| **[Awesome ICS Security](https://github.com/hslatman/awesome-industrial-control-system-security)** | Recursos de seguretat en sistemes de control industrial. |
| **[Grassmarlin](https://github.com/nsacyber/grassmarlin)** | Descoberta de xarxes industrials (NSA). |
| **[S7Scan](https://github.com/moki-ics/s7scan)** | Escàner per a dispositius Siemens S7. |

## ⚙️ Infrastructure, Linux & Hardening
| Eina | Descripció |
| :--- | :--- |
| **[RHEL 9 Security Hardening](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/9/html/security_hardening/index)** | Guia oficial de Red Hat per assegurar RHEL 9. |
| **[Exploit Notes](https://exploit-notes.hdks.org/)** | Notes detallades sobre explotació i CTFs. |
| **[Lynis](https://cisofy.com/lynis/)** | Auditoria de seguretat per a sistemes Unix/Linux. |
| **[SSH Monitor](scripts/python/ssh_monitor.py)** | Script per monitoritzar accessos SSH. |
| **[pspy](https://github.com/DominicBreuker/pspy)** | Monitorització de processos sense root. |
| **[nmap](https://nmap.org/)** | Estàndard per a exploració de xarxa. |
| **[exiftool](https://exiftool.org/)** | Lectura i edició de metadades de fitxers. |

## ☁️ Cloud Security
| Eina | Descripció |
| :--- | :--- |
| **[Prowler](https://github.com/prowler-cloud/prowler)** | Auditoria i hardening per a AWS, Azure i GCP. |
| **[CloudFox](https://github.com/BishopFox/cloudfox)** | Vectors d'atac en infraestructures cloud. |
| **[Pacu](https://github.com/RhinoSecurityLabs/pacu)** | Framework d'explotació per a AWS. |
| **[cloud_enum](https://github.com/initstring/cloud_enum)** | Enumeració de recursos públics en cloud. |

## 🔍 Code Analysis & SAST
| Eina | Descripció |
| :--- | :--- |
| **[Semgrep](https://github.com/semgrep/semgrep)** | Motor d'anàlisi estàtica de codi multillenguatge. |
| **[Bandit](https://bandit.readthedocs.io/en/latest/)** | Troba problemes de seguretat en codi Python. |
| **[SonarQube](https://docs.sonarsource.com/sonarqube/latest/setup-and-upgrade/install-the-server/installing-sonarqube-from-docker/)** | Inspecció contínua de qualitat i seguretat. |
| **[Brakeman](https://brakemanscanner.org/)** | Escàner de vulnerabilitats per a Ruby on Rails. |
| **[Trivy](https://github.com/aquasecurity/trivy)** | Escàner per a contenidors i artefactes. |
| **[trufflehog](https://github.com/trufflesecurity/trufflehog)** | Busca secrets i claus filtrades en repos. |

## 🕵️ Forensics & Network Analysis
| Eina | Descripció |
| :--- | :--- |
| **[NetworkMiner](https://www.netresec.com/?page=Networkminer)** | Anàlisi forense de xarxa (PCAP). |
| **[ForensicsTools](https://github.com/mesquidar/ForensicsTools)** | Recull d'eines per a forense digital. |

## 🌍 OSINT & Threat Intelligence
| Eina | Descripció |
| :--- | :--- |
| **[SecurityTrails](https://securitytrails.com/)** | Dades de dominis i historial d'IPs. |
| **[crt.sh](https://crt.sh/)** | Enumeració de subdominis via certs SSL. |
| **[Hunter.io](https://hunter.io/)** | Troba i verifica correus d'un domini. |
| **[Criminal IP](https://www.criminalip.io/)** | CTI per trobar actius exposats. |
| **[DeHashed](https://www.dehashed.com/)** | Cercador de dades filtrades i credencials. |
| **[urlscan.io](https://urlscan.io/)** | Anàlisi de comportament de llocs web. |
| **[theHarvester](https://github.com/laramies/theHarvester)** | Recol·lecció de correus, hosts i ports. |
| **[sherlock](https://github.com/sherlock-project/sherlock)** | Busca comptes per nom d'usuari. |
| **[dnstwist](https://github.com/elceef/dnstwist)** | Detecta typosquatting i phishing. |
| **[recon-ng](https://github.com/lanmaster53/recon-ng)** | Framework de reconeixement web en Python. |
| **[holehe](https://github.com/megadose/holehe)** | Comprova correus en +120 llocs web. |
| **[waybackurls](https://github.com/tomnomnom/waybackurls)** | Recupera URLs de la Wayback Machine. |
| **[social-analyzer](https://github.com/qeeqbox/social-analyzer)** | API/CLI per buscar perfils socials. |
| **[h8mail](https://github.com/khast3x/h8mail)** | Anàlisi de filtracions de correu. |

## 📚 Knowledge Bases & Learning
| Recurs | Descripció |
| :--- | :--- |
| **[HackTricks](https://book.hacktricks.wiki/)** | La biblia del pentesting i seguretat ofensiva. |
| **[Pentest Everything](https://viperone.gitbook.io/pentest-everything)** | Guia completa de Bug Bounty. |
| **[Pentesting Notes](https://notes.incendium.rocks/pentesting-notes/)** | Notes de camp per a pentesting. |
| **[ADMinions](https://adminions.ca/)** | Explotació d'Active Directory. |
| **[The Hacker Recipes](https://www.thehacker.recipes/)** | Atacs contra AD i xarxes Windows. |

## 🤖 AI for Cybersecurity
| Recurs | Descripció |
| :--- | :--- |
| **[PentestGPT](https://github.com/GreyD00r/PentestGPT)** | Agent d'IA per a pentesting. |
| **[Strix](https://github.com/usestrix/strix)** | Seguretat ofensiva assistida per IA. |
| **[AGENTS.md](https://agents.md/)** | Estàndard per guiar agents d'IA en repositoris. |
