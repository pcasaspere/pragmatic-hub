---
title: "🔍 Code Analysis & SAST"
tags: [section]
---

## 🔍 Code Analysis & SAST

Eines per integrar seguretat al cicle de desenvolupament de codi, des de l'anàlisi estàtica fins a la gestió de dependències i SBOMs.

### 🔬 SAST (Static Analysis Security Testing)

Anàlisi estàtica de codi font per detectar vulnerabilitats abans d'executar-lo.

| Eina | Descripció |
| :--- | :--- |
| **[Semgrep](https://github.com/semgrep/semgrep)** | Motor d'anàlisi estàtica de codi multillenguatge amb regles personalitzables. |
| **[SonarQube](https://docs.sonarsource.com/sonarqube/latest/setup-and-upgrade/install-the-server/installing-sonarqube-from-docker/)** | Inspecció contínua de qualitat i seguretat del codi. |
| **[Bandit](https://bandit.readthedocs.io/en/latest/)** | Troba problemes de seguretat en codi Python. |
| **[Brakeman](https://brakemanscanner.org/)** | Escàner de vulnerabilitats per a Ruby on Rails. |

### 🔑 Secret Detection

Detecció de secrets, credencials i claus filtrades en repositoris.

| Eina | Descripció |
| :--- | :--- |
| **[trufflehog](https://github.com/trufflesecurity/trufflehog)** | Busca secrets i claus filtrades en repos i fonts de dades. |

### 📦 SCA (Software Composition Analysis)

Anàlisi de vulnerabilitats en dependències i artefactes de tercers.

| Eina | Descripció |
| :--- | :--- |
| **[Trivy](https://github.com/aquasecurity/trivy)** | Escàner de vulnerabilitats per a contenidors, sistemes de fitxers, repos i artefactes. |
| **[OSV Scanner](https://github.com/google/osv-scanner)** | Escàner per buscar vulnerabilitats publicades (OSV) en dependències i artefactes. |

### 📋 SBOM (Software Bill of Materials)

Generació i gestió de SBOMs per al control de la cadena de subministrament de programari.

| Eina | Descripció |
| :--- | :--- |
| **[Syft](https://github.com/anchore/syft)** | Generador de SBOM per a containers, Python, JavaScript i molts ecosistemes. Format CycloneDX i SPDX. |
| **[Dependency-Track](https://dependencytrack.org/)** | Plataforma de seguiment i anàlisi contínua de SBOMs. Gestiona vulnerabilitats, llicències i integritat de components. |
