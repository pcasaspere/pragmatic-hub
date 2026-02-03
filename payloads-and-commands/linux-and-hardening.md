# ⚙️ Linux Security & Hardening

Recull de comandes i scripts per a l'administració segura de sistemes Linux.

## 🛡️ Monitoratge d'Accessos
- **SSH Monitor Script:** Analitza intents de força bruta.
  `python3 ../../scripts/python/ssh_monitor.py`
- **Veure qui està loguejat actualment:**
  `w` o `who`
- **Historial d'últims accessos exitosos:**
  `last -n 20`

## 🔍 Auditoria de Xarxa Local
- **Llistar ports escoltant (amb procés):**
  `ss -tunlp` o `netstat -tunlp`
- **Veure connexions actives a un port específic (ex. 80):**
  `lsof -i :80`

## 🧱 Firewall & Hardening (UFW)
- **Bloquejar una IP atacant a l'acte:**
  `sudo ufw deny from 1.2.3.4`
- **Permetre només el rang de la VPN (ex. Guifi):**
  `sudo ufw allow from 10.0.0.0/8 to any port 22`
- **Estat del firewall amb numeració (per a deletions):**
  `sudo ufw status numbered`

## 📝 Anàlisi de Logs i Salut del Sistema
- **Buscar errors de hardware/kernel:**
  `dmesg -T | grep -i error`
- **Últims 50 errors del sistema (systemd):**
  `journalctl -p 3 -xb | tail -n 50`
- **Monitorar fitxers modificats recentment a /etc:**
  `find /etc -mtime -1 -ls`
