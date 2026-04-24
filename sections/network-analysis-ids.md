---
title: "🌐 Network Analysis & IDS"
tags: [section, forensics, network, ids]
---

# 🌐 Network Analysis & IDS

Aquesta pàgina recull conceptes, eines i bones pràctiques per al monitoratge i l'anàlisi de xarxa: captura i anàlisi de PCAP, detecció d'intrusions (IDS), processament de fluxos (NetFlow/IPFIX), i instrumentació per a detecció i resposta (NDR / Network Detection & Response).

Per què és important
- La telemetria de xarxa (PCAP, NetFlow, DNS logs, TLS metadata) és fonamental per entendre moviment lateral, exfiltració i comportaments anòmals que sovint no deixen rastre en hosts.
- IDS/IPS (Suricata, Snort, Zeek en mode detecció + signatures) donen cobertura en temps quasi real i actuen com a sensorials per a la detecció automatitzada.

Categories i components clau
- Captura de paquets (PCAP): tcpdump, dumpcap, Arkime (anteriorment Moloch)
- Anàlisi i pipeline de logs/metadata: Zeek (scriptable network analysis), Suricata (IDS + EVE JSON), Snort
- Fluxos i telemetria: nfdump/flow-tools, ntopng, sflow/NetFlow collectors
- Plataformes de detecció i investigació: Security Onion, Elastic + Beats + SIEM, Splunk (si està disponible)
- Visualització i troubleshooting: Wireshark, tshark, NetworkMiner, sniffnet (per petites infraestructures o dev)

Bones pràctiques d'implementació
- Col·locació dels sensors: sensors perimetral(s) + sensors internals en VLAN/segments crítics per capturar trànsit estès i lateral.
- Retenció i sampling: equilibrar retenció de PCAP vs cost; conservar metadades (logs EVE/Zeek) més temps i PCAPs per períodes/alertes específiques.
- Enriquiment: enrich amb DNS resolucions, WHOIS, geolocalització IP, etiquetes d'actiu (asset tagging) i context d'IPS/Firewall.
- Correlació: combinar hosts logs (EDR) amb telemetria de xarxa per reduir falsos positius i obtenir context d'incident.
- Gestió de signatures i regles: tenir procés per testejar i desplegar regles (Suricata ruleset, Zeek scripts). Automatitzar testeig en entorn staging.
- Privacy & legal: anota i controla accés a PCAPs (poden contenir dades personals). Defineix ROE/privacitat per investigacions.

Detecció i Response
- Alertes a SIEM: mapar alertes IDS a casos en el SIEM amb runbooks d’investigació.
- Hunting: utilitza queries sobre Zeek logs / Suricata EVE per buscar anomalies (baselines, connexions inusuals, ports, SSL fingerprinting).
- Automatització: playbooks per contingir hosts (quarantine) via firewall o EDR; però mantén revisió humana per accions d’impacte.

Eines recomanades (referències ràpides)
- Zeek (https://zeek.org) — anàlisi de xarxa scriptable
- Suricata (https://suricata.io) — IDS/IPS amb sortida EVE JSON
- Arkime / Moloch (https://arkime.com) — indexació i cerca de PCAPs
- Security Onion (https://securityonion.net) — distribució per monitoratge complet (Zeek+Suricata+Elasticsearch)
- Wireshark / tshark — anàlisi de paquets
- sniffnet (https://github.com/GyulyVGC/sniffnet) — visualització de trànsit per entorns petits (afegit a pragmatic-hub)
- ntopng — anàlisi de fluxos i visualització

Com començar (quickstart)
1) Deploy: posa un sensor Zeek/Suricata en mirroring/span del trànsit perimetral.
2) Ingest: envia logs EVE/Zeek a Elasticsearch/Logstash o SIEM per indexació.
3) Baseline: recull dades 7–14 dies per establir línies base de comportament normal.
4) Regles: importa regles conegudes (Emerging Threats / ET) i edita segons falsos positius locals.
5) Hunting: crea queries per buscar beacons, connexions a IP sospitoses, transferències grans de dades, certs User-Agents o TLS JA3 fingerprints.

Checklist per audits
- Sensor coverage: què està cobert? (perímetre, segment intern, DMZ)
- Retenció: logs i PCAP (quants dies?)
- Alarms: quantes alertes/diari, taxa de falsos positius
- Integracions: EDR, Firewall, SIEM, threat intel feeds
- Procediments: runbooks d’investigació i rotació de claus/polítiques

Notes finals
- Aquesta pàgina és un punt d’arrencada; podem crear subpàgines amb tutorials d’instal·lació (Suricata + EVE → Elastic), exemples de regles Zeek, o playbooks de resposta per incidents de xarxa.
- Vols que cree una pàgina separada amb un tutorial pas-a-pas per desplegar Zeek+Suricata + Elastic? 
