---
title: "Network, IDS & Forensics"
tags: [section, forensics, network, ids]
---

# Network, IDS & Forensics

Captura (PCAP), IDS/NDR i forense de xarxa / IR. Telemetria de xarxa (PCAP, NetFlow, DNS, TLS) cobreix moviment lateral i exfiltració que sovint no deixa rastre al host.

## Eines

| Eina | Descripció |
| :--- | :--- |
| **[NetworkMiner](https://www.netresec.com/?page=Networkminer)** | Forense de xarxa sobre PCAP. |
| **[Wireshark](https://www.wireshark.org/)** / tshark | Anàlisi de paquets. |
| **[Zeek](https://zeek.org)** | Anàlisi de xarxa scriptable (metadata). |
| **[Suricata](https://suricata.io)** | IDS/IPS amb sortida EVE JSON. |
| **[Arkime](https://arkime.com)** | Indexació i cerca de PCAPs (ex-Moloch). |
| **[Security Onion](https://securityonion.net)** | Distro de monitoratge (Zeek + Suricata + Elastic). |
| **[sniffnet](https://github.com/GyulyVGC/sniffnet)** | Visualització de trànsit per lab / infra petita. Fitxa: [links/sniffnet.md](../links/sniffnet.md). |
| **[ntopng](https://www.ntop.org/products/traffic-analysis/ntop/)** | Fluxos i visualització. |
| **[ForensicsTools](https://github.com/mesquidar/ForensicsTools)** | Recull d'eines de forense digital. |
| **[LogonTracer](https://github.com/JPCERTCC/LogonTracer)** | Investigació visual de logons AD (events Windows). |
| **[Aurora IR](https://github.com/cyb3rfox/Aurora-Incident-Response)** | Documentació i seguiment d'Incident Response. |
| **[exiftool](https://exiftool.org/)** | Metadades de fitxers (forense / OSINT). |

## Components típics

- Captura: tcpdump, dumpcap, Arkime
- Detecció: Suricata, Snort, Zeek
- Fluxos: nfdump, ntopng, sFlow/NetFlow
- Plataforma: Security Onion, Elastic, Splunk
- IR: NetworkMiner, Aurora, LogonTracer

## Bones pràctiques (resum)

- Sensors al perímetre **i** a segments interns crítics.
- Conserva metadata (EVE/Zeek) més temps que el PCAP brut.
- Enrich: DNS, asset tags, intel. Correlaciona amb EDR.
- PCAP pot ser dada personal: control d'accés i ROE.

## Arrencada ràpida

1. Sensor Zeek/Suricata en SPAN/mirror del perímetre.
2. Ingesta EVE/Zeek al SIEM.
3. Baseline 7–14 dies.
4. Regles ET en staging abans de prod.
5. Hunting: beacons, transferències grans, JA3 anòmals.
