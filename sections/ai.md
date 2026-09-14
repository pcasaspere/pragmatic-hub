---
title: "AI i Agents"
tags: [section]
---

# AI i Agents

Frameworks d'agents, MCP, i IA aplicada a ciberseguretat. Les **skills SKILL.md concretes** (Superpowers, superdesign, Cloudflare audit, HackSkills…) són a [Skills](skills.md). Les eines ofensives *sense* component d'IA són a [Offensive Security](offensive-security-pentesting-bug-bounty.md).

**Índex**
- [Directoris de skills i MCP](#directoris-de-skills-i-mcp)
- [Runtimes d'agents](#runtimes-dagents)
- [Eina i convencions per agents](#eina-i-convencions-per-agents)
- [Models i labs](#models-i-labs)
- [Agents de pentest](#agents-de-pentest)

## Directoris de skills i MCP

Catàlegs i el protocol. Per instal·lar o descobrir skills, comença aquí.

| Recurs | Descripció |
| :--- | :--- |
| **[AgenticSkills](https://agenticskills.io/)** | Directori de SKILL.md i 200+ MCP. Claude Code, Codex, Cursor, Gemini CLI. Fitxa: [resources/agenticskills.md](../resources/agenticskills.md). |
| **[skills.sh](https://skills.sh/)** | Directori de skills instal·lables. Fitxa: [resources/skills-sh.md](../resources/skills-sh.md). |
| **[Model Context Protocol (MCP)](https://modelcontextprotocol.io/)** | Protocol d'eines/context entre agents i serveis. |
| **[MCP Servers Directory](https://github.com/modelcontextprotocol/servers)** | Servidors MCP d'exemple. |

## Runtimes d'agents

On corre l'agent (el “sistema operatiu”, no el catàleg).

| Recurs | Descripció |
| :--- | :--- |
| **[Hermes](../resources/Hermes.md)** | Runtime d'agent (aquest assistent). |
| **[OpenClaw](https://github.com/openclaw/openclaw)** | Ecosistema d'agents (BraserBot / similars). |
| **[Agency Agents](https://github.com/msitarzewski/agency-agents/)** | Col·lecció d'agents especialitzats. |
| **[SuperClaw](https://github.com/SuperagenticAI/superclaw)** | Suite agentica de seguretat (comunitat). |
| **[CyberStrikeAI](https://github.com/Ed1s0nZ/CyberStrikeAI)** | Plataforma AI-native + MCP. |
| **[CAI](https://github.com/aliasrobotics/CAI)** | Framework IA + cyber (també ROS). |

## Eina i convencions per agents

Normes, grafs de codi, sandbox i SAST de skills. No són pentest.

| Recurs | Descripció |
| :--- | :--- |
| **[AGENTS.md](https://agents.md/)** | Convenció per guiar agents dins d'un repo. |
| **[Codegraph](https://github.com/colbymchenry/codegraph)** | Graf de codi local per agents de coding. |
| **[NVIDIA SkillSpector](https://github.com/NVIDIA/SkillSpector)** | SAST de skills d'agents (també a [Code Analysis](code-analysis-sast.md)). |
| **[OpenSandbox](https://github.com/opensandbox-group/OpenSandbox)** | Runtime de sandbox ràpid i extensible per aïllar el que executen els agents d'IA. |

Skills concretes (Superpowers, superdesign, Cloudflare, HackSkills, ponytail): [Skills](skills.md).

## Models i labs

Models i productes de laboratori (DeepMind / Google), no agents de pentest de comunitat.

| Recurs | Descripció |
| :--- | :--- |
| **[Gemini 3.5 Flash Cyber](https://deepmind.google/blog/introducing-gemini-3-5-flash-cyber/)** | Model DeepMind per trobar/validar/patchar vulns. |
| **[Google CodeMender](https://docs.cloud.google.com/gemini-enterprise-agent-platform/codemender)** | Agent que orquestra Gemini Cyber per rutes d'execució i patches. |

## Agents de pentest

Eines que fan (o assisteixen) pentest amb LLM. Revisió humana obligatòria. ROE abans d'executar.

| Recurs | Descripció |
| :--- | :--- |
| **[PentestGPT](https://github.com/GreyDGL/PentestGPT)** | Agent LLM per pentest (revisió humana obligatòria). |
| **[Strix](https://github.com/usestrix/strix)** | Agents que troben i validen vulns amb evidència. |
| **[PentAGI](https://github.com/vxcontrol/pentagi)** | Arquitectura agentica multi-etapa de pentest. |
| **[HackingBuddyGPT](https://github.com/ipa-lab/hackingBuddyGPT)** | Biblioteca per agents d'hacking amb LLM. |
| **[Shannon](https://github.com/KeygraphHQ/shannon)** | Pentester white-box web/API. |
| **[BlacksmithAI](https://github.com/yohannesgk/blacksmith)** | Multi-agent per fluxos de pentest. |
| **[PentestAgent](https://github.com/GH05TCREW/pentestagent)** | Agent black-box amb playbooks. |
| **[AIDA](https://github.com/Vasco0x4/AIDA)** | LLM → pentester en Docker aïllat + MCP. |
| **[Pentest Copilot](https://github.com/bugbasesecurity/pentest-copilot)** | Assistència al navegador + informes. |
