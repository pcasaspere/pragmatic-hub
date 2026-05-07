---
title: "🤖 AI i Agents"
tags: [section]
---

## 🤖 AI i Agents

Aquest fitxer consolida la informació de tres seccions prèvies del repositori: "Agentic Frameworks & MCP", "Agents" i "AI for Cybersecurity". Aquí tens una explicació ràpida de què significa cada concepte i una llista organitzada de recursos, eines i enllaços rellevants.

Resum ràpid:
- Agentic Frameworks & MCP: estàndards, protocols i frameworks que permeten crear, executar i integrar agents d'IA (per ex. MCP — Model Context Protocol), i ecosistemes de "skills" o connectors reutilitzables.
- AI for Cybersecurity: projectes, biblioteques i eines que apliquen IA per a tasques de seguretat (agents de pentest, simuladors, frameworks d'entrenament, etc.).

---

## Organització del contingut

1) Agentic Frameworks & MCP — Protocols i frameworks
3) AI for Cybersecurity — Projectes i eines rellevants

---

## 1) Agentic Frameworks & MCP

| Recurs | Descripció |
| :--- | :--- |
| **[skills.sh](https://skills.sh/)** | Ecosistema obert de "skills" per a agents d'IA. Directori per instal·lar capacitats reutilitzables en agents com Claude Code, Copilot, Cursor, etc. |
| **[Model Context Protocol (MCP)](https://modelcontextprotocol.io/)** | Protocol obert per a la interoperabilitat entre agents i eines (estàndard per compartir "context" i recursos entre agents i serveis). |
| **[MCP Servers Directory](https://github.com/modelcontextprotocol/servers)** | Llistat i exemples de servidors MCP per connectar agents a bases de dades, APIs i eines externes. |
| **[OpenClaw](https://github.com/openclaw/openclaw)** | Ecosistema d'agents i eines on pot córrer BraserBot / agents similars. |
| **[Agency Agents](https://github.com/msitarzewski/agency-agents/)** | Col·lecció d'agents especialitzats (diversos rols) preparada per a producció. |
| **[AGENTS.md](https://agents.md/)** | Guia / estàndard per construir i guiar agents d'IA en repositoris i workspaces. |

---

## 3) AI for Cybersecurity — eines i projectes

| Recurs | Descripció |
| :--- | :--- |
| **[HackSkills / yaklang](https://github.com/yaklang/hack-skills)** | Col·lecció de 102 skills per agents d'IA en 14 dominis de seguretat (web, API, auth, OS privesc, AD, mobile, binex, RE, crypto, blockchain, AI/ML, network, forensics). Dissenyat per pentesting, bug bounty i CTF — skills en format SKILL.md per carregar directament en qualsevol agent d'IA. |
| **[CALDERA](https://github.com/mitre/caldera)** | Plataforma d'emulació d'adversaris automatitzada basada en MITRE ATT&CK; útil en workflows que combinen IA per l'orquestració de proves i mapatge d'eines/tàctiques. |
| **[Atomic Red Team](https://github.com/redcanaryco/atomic-red-team)** | Col·lecció d'atòms de proves mapejats a ATT&CK; sovint integrada en pipelines automatitzades i validació de detecció assistida per IA. |
| **[Metasploit Framework](https://github.com/rapid7/metasploit-framework)** | Framework de pentesting compatible amb automatització i scripts; pot integrar-se en orquestres d'IA per a execució de tests controlats. |
| **[Infection Monkey](https://github.com/guardicore/infection-monkey)** | Simulació de moviment lateral que pot alimentar models d'IA amb dades de propagació per millorar deteccions. |
| **[PurpleSharp](https://github.com/mgeeky/PurpleSharp)** | Eina enfocada a Active Directory per emular tècniques AD; útil per entrenar o provar deteccions específiques. |
| **[PentestGPT](https://github.com/GreyDGL/PentestGPT)** | Agent d'IA per a pentesting; exemple de com els LLMs poden automatitzar parts d'un pentest. |
| **[Strix](https://github.com/usestrix/strix)** | Agents AI autònoms que troben i validen vulnerabilitats automàticament amb evidència reproduïble. |
| **[SuperClaw](https://github.com/SuperagenticAI/superclaw)** | Suite de seguretat agentica de codi obert amb múltiples agents especialitzats (projecte comunitari). |
| **[CyberStrikeAI](https://github.com/Ed1s0nZ/CyberStrikeAI)** | Plataforma de seguretat AI-native amb diverses eines integrades i suport MCP. |
| **[PentAGI](https://github.com/vxcontrol/pentagi)** | Arquitectura agentica autònoma per pentesting amb capacitat de planificació i execució multi-etapa. |
| **[CAI](https://github.com/aliasrobotics/CAI)** | Framework open-source per aplicar IA en ciberseguretat (integració amb ROS, sistemes robòtics). |
| **[HackingBuddyGPT](https://github.com/ipa-lab/hackingBuddyGPT)** | Biblioteca i exemples per crear agents d'hacking amb LLMs, amb suport per a múltiples tècniques ofensives. |
| **[Shannon](https://github.com/KeygraphHQ/shannon)** | Pentester blanc-caixa autònom per aplicacions web i APIs, amb anàlisi semàntica del codi font. |
| **[BlacksmithAI](https://github.com/yohannesgk/blacksmith)** | Marc multi-agent open-source per automatitzar fluxos de pentesting amb coordinació entre agents especialitzats. |
| **[PentestAgent](https://github.com/GH05TCREW/pentestagent)** | Agent orientat a proves black-box amb playbooks preconstruïts per a escenaris comuns d'atac. |
| **[AIDA](https://github.com/Vasco0x4/AIDA)** | Agent autònom de pentesting que converteix qualsevol LLM en pentester. Executa nmap, sqlmap, nuclei, ffuf i scripts Python en contenidor Docker aïllat, amb notebook persistent i suport MCP. Ja ha produït CVEs reals. |
| **[Pentest Copilot](https://github.com/bugbasesecurity/pentest-copilot)** | Assistència AI basada en navegador per agilitzar workflows de pentesting i generar informes automàticament. |
| **[Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills)** | Recull de skills en format SKILL.md i exemples pràctics orientats a l'ús de models Anthropic per a tasques de ciberseguretat (auditoria, anàlisi, generació de regles). |

---


