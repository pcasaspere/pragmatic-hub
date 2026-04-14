# Ukraine power grid attack (2015)

Resum

El desembre de 2015 diversos operadors de distribució elèctrica a Ucraïna van patir una campanya que va provocar apagades locals. L'atac s'atribueix al grup conegut com Sandworm i va usar malware BlackEnergy i KillDisk juntament amb tècniques de spear-phishing.

Timeline bàsic

- Prèviament a desembre 2015: compromís inicial mitjançant spear-phishing i implantació de BlackEnergy en sistemes IT.
- 23 Desembre 2015: desencadenament d'operacions que van desconnectar subestacions i van provocar apagades locals.

Vectors i TTPs (resum)

- Phishing dirigit amb documents maliciosos que instal·laven BlackEnergy.
- Corruptació de firmwares i manipulació de dispositius de gestió remota (incloent UPS i dispositius Serial-to-Ethernet).
- Ús de KillDisk per destruir evidències i afectar la recuperació.

MITRE ATT&CK mapejat (exemples)

- Initial Access: Spearphishing Attachment (T1193)
- Defense Evasion: Masquerading (T1036)
- Impact: Service Stop (T1489) / Data Destruction (T1485)

IOCs i fonts

- E-ISAC / SANS analysis (PDF): https://media.kasperskycontenthub.com/wp-content/uploads/sites/43/2016/05/20081514/E-ISAC_SANS_Ukraine_DUC_5.pdf
- CISA ICS alert: https://www.cisa.gov/news-events/ics-alerts/ir-alert-h-16-056-01
- MITRE ATT&CK campaign: https://attack.mitre.org/campaigns/C0028/

Recomanacions per operadors

- Segmentar i monitoritzar acuradament comunicacions entre IT i OT.
- Revisar gestors remots (UPS, serial-to-ethernet) i assegurar-se que tenen firmwares verificats i accès restringit.
- Implementar detecció i resposta per a campanyes de spear-phishing.
