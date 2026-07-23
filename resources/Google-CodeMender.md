---
title: "Google CodeMender"
aliases: ["Google CodeMender", "CodeMender"]
tags: [resource, ai, agent, cybersecurity, sast]
source_url: "https://docs.cloud.google.com/gemini-enterprise-agent-platform/codemender"
last_verified: "2026-07-23T00:00:00Z"
---

# Google CodeMender

**CodeMender** és la plataforma / agent autònom de ciberseguretat de Google (dins de Gemini Enterprise Agent Platform) dissenyada per analitzar grans bases de codi, identificar vulnerabilitats, validar la seva explotabilitat i aplicar parches automàtics.

## Com funciona
CodeMender orquestra crides iteratives a alta velocitat vers models especialitzats com **Gemini 3.5 Flash Cyber**. L'agent:
1. Escaneja el codi font explorant múltiples rutes d'execució.
2. Formula hipòtesis de vulnerabilitat i les valida en entorns aïllats (*sandboxes*).
3. Genera el parche de seguretat i executa proves per confirmar que el problema s'ha resolt sense tancar funcionalitat ni introduir regressions.

Source: https://docs.cloud.google.com/gemini-enterprise-agent-platform/codemender
