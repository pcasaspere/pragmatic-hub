# ⚙️ Linux Security & Hardening

Recull de comandes i scripts per a l'administració segura de sistemes Linux.

## 🛡️ Monitoratge d'Accessos
- **SSH Monitor Script:** Analitza intents de força bruta.
  `python3 ../../scripts/python/ssh_monitor.py`
- **Veure qui està loguejat actualment:**
  `w` o `who`
- **Historial d'últims accessos exitosos:**
  `last -n 20`

## 🔍 Auditoria de Xarxa i Ús de `lsof`
L'eina `lsof` és indispensable per saber què està passant al sistema a nivell de fitxers i sockets.

### Xarxa i Ports
- **Qui està usant un port específic? (ex. 8080):**
  `lsof -i :8080`
- **Llistar totes les connexions de xarxa actives:**
  `lsof -i`
- **Veure ports escoltant (LISTEN):**
  `lsof -i -sTCP:LISTEN`
- **Connexions d'un usuari concret (ex. www-data):**
  `lsof -i -u www-data`

### Fitxers i Processos
- **Quin procés té obert un fitxer o directori?**
  `lsof /camí/al/fitxer`
- **Llistar tots els fitxers oberts per un PID:**
  `lsof -p <PID>`
- **Fitxers oberts per un usuari:**
  `lsof -u <usuari>`
- **Veure binaris eliminats que segueixen en memòria (Sospitós):**
  `lsof +L1` o `lsof | grep deleted`

### Diagnòstic de Bloquejos
- **Llistar fitxers oberts en un directori sencer (útil per umount):**
  `lsof +D /var/log`

## 🧱 Firewall & Hardening

### UFW (Debian/Ubuntu)
- **Bloquejar una IP atacant:** `sudo ufw deny from 1.2.3.4`
- **Permetre rang VPN:** `sudo ufw allow from 10.0.0.0/8 to any port 22`
- **Estat numerat:** `sudo ufw status numbered`

### firewalld (RHEL/CentOS/Fedora)
- **Estat del firewall:** `firewall-cmd --state`
- **Llistar configuració de la zona activa:** `firewall-cmd --list-all`
- **Obrir un servei permanentment (ex. HTTPS):**
  `sudo firewall-cmd --permanent --add-service=https && sudo firewall-cmd --reload`
- **Obrir un port TCP específic:**
  `sudo firewall-cmd --permanent --add-port=8291/tcp && sudo firewall-cmd --reload`
- **Bloquejar una IP (Rich Rule):**
  `sudo firewall-cmd --permanent --add-rich-rule='rule family="ipv4" source address="1.2.3.4" reject' && sudo firewall-cmd --reload`
- **Veure zones disponibles:** `firewall-cmd --get-zones`

## 📝 Anàlisi de Logs i Salut del Sistema
- **Buscar errors de hardware/kernel:**
  `dmesg -T | grep -i error`
- **Últims 50 errors del sistema (systemd):**
  `journalctl -p 3 -xb | tail -n 50`
- **Monitorar fitxers modificats recentment a /etc:**
  `find /etc -mtime -1 -ls`
