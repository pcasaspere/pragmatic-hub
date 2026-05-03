# Greenbone — Anàlisi de Vulnerabilitats

> **Greenbone** (abans OpenVAS) és un framework de vulnerabilitat scanner de codi obert, basat en el protocol OSP i el NVDT (Greenbone Network Vulnerability Test Database). Permet fer anàlisis de vulnerabilitats automatitzades, gestió de riscos i reporting.

---

## 📦 Instal·lació

### Docker (recomanat)

```bash
# Greenbone Community Container
docker compose -f $HOME/greenbone-docker-compose.yml up -d
```

### Instal·lació directa (Debian/Ubuntu)

```bash
# Pendent d'omplir — veure fonts oficials
```

### Greenbone Community Edition

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

> *(Espai per detallar cada punt)*

---

## 🐛 Resolució de Problemes Típics

### 1. Error de sincronització de feeds

**Símptoma:** `feed sync failed` o NVTs desactualitzats.

**Possibles causes i solucions:**
- Pendent de documentar
- Pendent de documentar

### 2. Memòria insuficient

**Símptoma:** Caigudes del contenidor o `Out of memory` en escanejar.

**Solució:** Augmentar límits de RAM al Docker o a la VM.

### 3. Port 9390/9392 no accessible

**Símptoma:** `Connection refused` al GSA o a l'API.

**Solució:** Revisar `docker-compose.yml` ports mapping, firewall i `systemctl status`.

### 4. OpenVAS / GVMD no arrenca

- Pendent de documentar

### 5. Errors de base de dades (PostgreSQL)

- Pendent de documentar

### 6. Altres errors comuns

> *(Espai per omplir amb problemes trobats a la pràctica)*

---

## 🛠️ Comandes útils

```bash
# Comprovar estat dels serveis
# Pendent d'omplir

# Sincronitzar feeds manualment
# Pendent d'omplir

# Crear/administrar usuaris
# Pendent d'omplir

# Llançar un scan des de CLI
# Pendent d'omplir
```

---

## 📚 Referències

- [Web oficial Greenbone](https://www.greenbone.net/)
- [Greenbone Community Edition](https://greenbone.github.io/docs/latest/)
- [Docker Compose per Greenbone](https://greenbone.github.io/docs/latest/22.4/container/index.html)
- [NVTs Feed](https://www.greenbone.net/en/community-edition-feeds/)
- [OpenVAS / Greenbone a GitHub](https://github.com/greenbone)

---

> **Per omplir:** Afegeix aquí la instal·lació pas a pas que facis, configuracions específiques, issues que et trobis i les seves solucions documentades amb detall.
