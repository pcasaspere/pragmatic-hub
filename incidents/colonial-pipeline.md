# Colonial Pipeline ransomware attack (2021)

Resum

El 7 de maig de 2021, Colonial Pipeline va detectar una intrusió que posteriorment va ser atribuïda al grup criminal DarkSide. L'atac de ransomware va forçar la companyia a aturar operacions per contenir la propagació, provocant interrupcions en el subministrament de combustible a la costa est dels EUA.

Timeline bàsic

- 7 May 2021: detecció d'activitat sospitosa i aturada preventiva d'operacions.
- 8 May 2021: Colonial confirma l'atac i es treballa amb agències federals.
- 10 May 2021: FBI atribueix l'atac a DarkSide.

Vectors i TTPs (resum)

- Accés inicial via credencials d'un compte VPN sense MFA (reportat en diferents anàlisis).
- Moviment lateral dins de la xarxa IT; no hi ha proves públiques que OT fos directament encriptat, però es van aturar serveis operacionals per precaució.
- Exfiltració de dades i desplegament de ransomware DarkSide.

MITRE ATT&CK mapejat (exemples)

- Initial Access: Valid Accounts (T1078)
- Execution: Command and Scripting Interpreter (T1059)
- Impact: Data Encrypted for Impact (T1486)
- Exfiltration: Exfiltration Over Alternative Protocol (T1048)

IOCs i fonts

- DOE: https://www.energy.gov/ceser/colonial-pipeline-cyber-incident
- CISA advisory AA21-131A: https://www.cisa.gov/news-events/cybersecurity-advisories/aa21-131a

Recomanacions per operadors

- Implementar MFA per accés remot i VPNs.
- Segmentar clarament les xarxes IT i OT.
- Preparar i provar plans de resposta a incidents i plans de continuïtat de negoci.
