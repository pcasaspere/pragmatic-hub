# Greenbone — Anàlisi de Vulnerabilitats

> **Greenbone** (abans OpenVAS) és un framework de vulnerabilitat scanner de codi obert, basat en el protocol OSP i el NVDT (Greenbone Network Vulnerability Test Database). Permet fer anàlisis de vulnerabilitats automatitzades, gestió de riscos i reporting.

---

## 📦 Instal·lació

### Docker (recomanat)

```bash
# Greenbone Community Container
docker compose -f $HOME/greenbone-docker-compose.yml up -d
```

### Instal·lació directa (Debian/Ubuntu/Kali)

```bash
sudo apt update && sudo apt install gvm -y
sudo gvm-setup
```

- **Requisits mínims:** 4 GB RAM, 2 CPU, 20 GB disc
- **Requisits recomanats:** 8 GB RAM, 4 CPU, 100 GB disc

> ⚠️ Espai de disc crític per a les NVTs (Network Vulnerability Tests) i les dades de feeds.

---

## ⚙️ Configuració

### Canvis a realitzar després de la instal·lació

- Configuració d'usuaris i contrasenyes
- Sincronització de feeds NVTs
- Ajust de paràmetres d'scan (concurrència, ports, timeout)
- Configuració d'S-MIME / TLS per a Greenbone Security Assistant (GSA)

Si la interfície web es queda en "Update in progress", s'ha d'ignorar el GUI i forçar l'actualització per línia de comandes:

```bash
# Actualització completa de tots els feeds
sudo gvm-feed-update

# Sincronització per components (si el comando anterior falla)
sudo -u _gvm greenbone-feed-sync --type nvt
sudo -u _gvm greenbone-feed-sync --type scap
sudo -u _gvm greenbone-feed-sync --type cert
sudo -u _gvm greenbone-feed-sync --type gvmd_data
```

---

## 🗄️ Gestió de la Base de Dades (PostgreSQL)

Quan PostgreSQL consumeix massa espai (bloat) o es queda bloquejat, cal intervenir directament sobre el motor de la base de dades.

### Compactació de dades (VACUUM)

El comandament `VACUUM FULL` reconstrueix les taules buidant l'espai mort i retornant-lo al sistema operatiu.

> **Requisit:** Necessites almenys un 20-30% d'espai lliure addicional sobre la mida actual de la BD per processar-ho.

```bash
sudo systemctl stop gvmd
sudo -u postgres vacuumdb --database=gvmd --full --analyze
```

### Resolució de l'error "No space left on device"

Si el disc està al 100%, el VACUUM fallarà. Cal alliberar espai manualment abans:

```bash
# Neteja d'APT
sudo apt clean

# Buidar logs
sudo find /var/log/gvm/ -type f -exec truncate -s 0 {} +

# Esborrar plugins temporals (allibera ~1.5 GB)
sudo rm -rf /var/lib/openvas/plugins/*
```

---

## 🔄 Reinstal·lació des de Zero (Mètode Nuclear)

Si la base de dades ha crescut de forma irreversible (ex. +20 GB) o està corrompuda, el més eficient és recrear tot l'entorn.

### Seqüència de neteja total

```bash
# 1. Aturar serveis
sudo gvm-stop

# 2. Eliminar paquets i dependències
sudo apt purge gvm openvas -y
sudo apt autoremove -y

# 3. Esborrar directoris de dades (CURA: acció irreversible!)
sudo rm -rf /var/lib/postgresql/
sudo rm -rf /var/lib/gvm/
sudo rm -rf /var/lib/openvas/
```

### Seqüència de re-instal·lació

```bash
sudo apt update && sudo apt reinstall gvm -y
sudo gvm-setup
```

---

## 🩺 Comandes de Diagnòstic Ràpid

Sempre que tinguis un problema, executa aquests tres comandaments per saber on és la fallada:

| Comandament | Objectiu |
|-------------|---------|
| `sudo gvm-check-setup` | Verifica si la instal·lació de Kali és correcta. |
| `df -h` | Comprova si el disc està ple. |
| `tail -f /var/log/gvm/gvmd.log` | Mira en temps real què està fent la base de dades. |

---

## 🧩 Taula de Serveis Crítics

Perquè OpenVAS funcioni, aquests components han d'estar en estat **active**:

| Servei | Funció |
|--------|--------|
| **gvmd** | Gestor de la base de dades i configuracions. |
| **ospd-openvas** | El motor que llança els escanejos. |
| **notus-scanner** | Escaneig de vulnerabilitats estàtiques. |
| **postgresql** | On s'emmagatzema tota la informació. |

### Reinici general de tots els serveis

```bash
sudo systemctl restart postgresql ospd-openvas gvmd
```

---

## 🐛 Resolució de Problemes Típics

### 1. Error de sincronització de feeds

**Símptoma:** `feed sync failed` o NVTs desactualitzats.

**Solució:** Prova la sincronització manual per components (veure secció de Configuració).

### 2. Memòria insuficient

**Símptoma:** Caigudes del contenidor o `Out of memory` en escanejar.

**Solució:** Augmentar límits de RAM al Docker o a la VM.

### 3. Port 9390/9392 no accessible

**Símptoma:** `Connection refused` al GSA o a l'API.

**Solució:** Revisar `docker-compose.yml` ports mapping, firewall i `systemctl status`.

### 4. OpenVAS / GVMD no arrenca

Prova un reinici complet dels serveis (veure secció Servei Crítics).

### 5. Base de dades sense espai

Segueix els passos de la secció "Gestió de la Base de Dades".

### 6. Plantilla buida o "Update in progress" etern

Ignora la UI i força l'actualització via CLI amb `sudo gvm-feed-update`.

---

## 📚 Referències

- [Web oficial Greenbone](https://www.greenbone.net/)
- [Greenbone Community Edition](https://greenbone.github.io/docs/latest/)
- [Docker Compose per Greenbone](https://greenbone.github.io/docs/latest/22.4/container/index.html)
- [NVTs Feed](https://www.greenbone.net/en/community-edition-feeds/)
- [OpenVAS / Greenbone a GitHub](https://github.com/greenbone)
