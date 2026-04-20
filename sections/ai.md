---
title: "🤖 AI i Agents"
tags: [section]
---

## 🤖 AI i Agents

Aquest fitxer consolida la informació de tres seccions prèvies del repositori: "Agentic Frameworks & MCP", "Agents" i "AI for Cybersecurity". Aquí tens una explicació ràpida de què significa cada concepte i una llista organitzada de recursos, eines i enllaços rellevants.

Resum ràpid:
- Agentic Frameworks & MCP: estàndards, protocols i frameworks que permeten crear, executar i integrar agents d'IA (per ex. MCP — Model Context Protocol), i ecosistemes de "skills" o connectors reutilitzables.
- Agents: implementacions concretes (persones/agents) o conjunts d'agents preparats per a tasques (ex. Senior Auditor, Red Team Lead). Són els "personatges" o eines que utilitzen els frameworks.
- AI for Cybersecurity: projectes, biblioteques i eines que apliquen IA per a tasques de seguretat (agents de pentest, simuladors, frameworks d'entrenament, etc.).

---

## Organització del contingut

1) Agentic Frameworks & MCP — Protocols i frameworks
2) Agents (carpeta agents/) — Agents locals i exemples
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

## 2) Agents (carpeta local)

El directori agents/ del repo conté exemples d'agents i les seves identitats/configuracions. Enllaç per consultar-ho directament:

- [agents/](../agents/)

Resum dels agents locals més destacats:
- Senior Auditor — Agent orientat a audits i revisió de controls.
- CTI Architect — Agent enfocat en Intel·ligència de Amenaces.
- BlueAdvisor — Agent per a defenses i regles de detecció.
- Red Team Lead — Agent per a coordinació de proves ofensives.

(Pots obrir cada subcarpeta a agents/ per veure IDENTITIES i exemples.)

---

## 3) AI for Cybersecurity — eines i projectes

| Recurs | Descripció |
| :--- | :--- |
| **[CALDERA](https://github.com/mitre/caldera)** | Plataforma d'emulació d'adversaris automatitzada basada en MITRE ATT&CK; útil en workflows que combinen IA per l'orquestració de proves i mapatge d'eines/tàctiques. |
| **[Atomic Red Team](https://github.com/redcanaryco/atomic-red-team)** | Col·lecció d'atòms de proves mapejats a ATT&CK; sovint integrada en pipelines automatitzades i validació de detecció assistida per IA. |
| **[Metasploit Framework](https://github.com/rapid7/metasploit-framework)** | Framework de pentesting compatible amb automatització i scripts; pot integrar-se en orquestres d'IA per a execució de tests controlats. |
| **[Infection Monkey](https://github.com/guardicore/infection-monkey)** | Simulació de moviment lateral que pot alimentar models d'IA amb dades de propagació per millorar deteccions. |
| **[PurpleSharp](https://github.com/mgeeky/PurpleSharp)** | Eina enfocada a Active Directory per emular tècniques AD; útil per entrenar o provar deteccions específiques. |
| **[PentestGPT](https://github.com/GreyDGL/PentestGPT)** | Agent d'IA per a pentesting; exemple de com els LLMs poden automatitzar parts d'un pentest. |
| **[Strix](https://github.com/usestrix/strix)** | Agents AI que troben i validen vulnerabilitats automàticament. |
| **[SuperClaw](https://github.com/SuperagenticAI/superclaw)** | Suite de seguretat agentica (projecte comunitari). |
| **[CyberStrikeAI](https://github.com/Ed1s0nZ/CyberStrikeAI)** | Plataforma de seguretat AI-native amb diverses eines integrades i suport MCP. |
| **[PentAGI](https://github.com/vxcontrol/pentagi)** | Arquitectura agentica autònoma per pentesting. |
| **[CAI](https://github.com/aliasrobotics/CAI)** | Framework open-source per aplicacions d'IA en ciberseguretat. |
| **[HackingBuddyGPT](https://github.com/ipa-lab/hackingBuddyGPT)** | Biblioteca i exemples per crear agents d'hacking amb LLMs. |
| **[Shannon](https://github.com/KeygraphHQ/shannon)** | Pentester blanc-caixa autònom per aplicacions web i APIs. |
| **[BlacksmithAI](https://github.com/yohannesgk/blacksmith)** | Marc multi-agent open-source per automatitzar fluxos de pentesting. |
| **[PentestAgent](https://github.com/GH05TCREW/pentestagent)** | Agent orientat a proves black-box amb playbooks preconstruïts. |
| **[Pentest Copilot](https://github.com/bugbasesecurity/pentest-copilot)** | Assistència AI basada en navegador per agilitzar workflows de pentesting i generar informes. |
| **[Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills)** | Recull de skills i exemples orientats a l'ús d'Anthropic per a tasques de ciberseguretat. |

---


