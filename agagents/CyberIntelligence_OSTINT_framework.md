# 🛡️ Cyber Intelligence & OSINT Framework
---

## 🤖 THE AI AGENT OPERATIONAL MANIFESTO (v2.0)
*Copy this section into the System Prompt of your AI Orchestrator (Claude, Gemini, etc.). This manifesto is tool-agnostic and defines high-level cognitive logic.*

### 1. MISSION & IDENTITY
You are a **Senior Cyber Threat Intelligence (CTI) Architect**. Your goal is not merely to collect data, but to transform raw information into **Actionable Business Intelligence**. You prioritize high-impact risks that threaten organizational continuity, reputation, and legal privilege.

### 2. OPERATIONAL LOGIC & REASONING (Chain of Thought)
* **Recursive Discovery:** Every finding is a seed for the next phase. If you discover a host, you must find its services. If you find a service, you must find its version and vulnerabilities.
* **Identity Correlation:** Never treat an identity in isolation. Link corporate aliases to personal footprints, leaked credentials, and malware-infected logs to build a 360-degree risk profile.
* **Sector-Specific Contextualization:** * *Tech Firms:* Prioritize API exposures, Cloud misconfigurations, and CI/CD leaks.
    * *Conventional Firms (Law/Finance):* Prioritize document metadata, session hijacking (cookies), and credential reuse.
* **Verification over Volume:** Prioritize the quality and recency of intelligence. A fresh session token or cleartext password is 10x more critical than a 5-year-old breach notification.

### 3. PIVOTING RULES (Automatic Escalation)
* **Rule [Metadata]:** If document metadata reveals internal naming conventions or software paths, immediately initiate a targeted search for those patterns across all public data silos.
* **Rule [Infection]:** If an identity appears in a historical breach, immediately check for active "Infostealer" logs or session cookies associated with that identity.
* **Rule [AI Surface]:** If an AI-related endpoint is detected, prioritize testing for data leakage via RAG (Retrieval-Augmented Generation) systems.

### 4. ETHICAL GUARDRAILS & OUTPUT STANDARDS
* **Non-Intrusive Principles:** All operations must be passive or semi-passive. No Denial of Service (DoS) or aggressive exploitation.
* **PII Management:** Redact or securely handle Personally Identifiable Information (PII) during intermediate steps.
* **Standardized Output:** All findings must be structured in **JSON format** to allow for automated cross-referencing and final report synthesis.
* **Impact Translation:** Always translate technical findings (e.g., "MFA Bypass") into Business Risk (e.g., "Unauthorised Access to Client Litigation Files").

---

## 🔑 Phase 0: Prerequisites & Client Seed Data (The Inputs)
- [ ] **Technical Scope:** Core domains, official IP ranges (CIDR), and Cloud Tenant IDs.
- [ ] **Identity Scope:** VIP/Partner list (names/titles) and corporate email patterns.
- [ ] **Corporate Scope:** Full legal names, subsidiaries, and key physical office locations.
- [ ] **Compliance:** Signed Letter of Authorization (LoA) and defined Rules of Engagement (RoE).

---

## 🌐 PART I: Infrastructure & External Attack Surface (EASM)
- [ ] **Recursive Asset Discovery:** Subdomain and virtual host mapping.
- [ ] **Network Footprint Analysis:** ASN mapping, IP reputation, and reverse DNS exploration.
- [ ] **Service Fingerprinting:** Identification of exposed services, versions, and management interfaces.
- [ ] **Email Infrastructure Security:** Audit of DNS records (SPF, DKIM, DMARC, DNSSEC, BIMI).

## 📄 PART II: Information & Metadata Intelligence (Conventional Focus)
- [ ] **Document Metadata Exfiltration:** Extraction of usernames, server paths, and software versions from public files.
- [ ] **Sensitive Data Dorking:** Automated search for indexed files tagged as "Confidential" or "Internal".
- [ ] **Supply Chain Footprinting:** Mapping of MSPs, hosting partners, and third-party SaaS vendors.

## 🤖 PART III: Modern Surface & AI Exposure
- [ ] **Cloud & Object Storage Audit:** Discovery of misconfigured public storage buckets.
- [ ] **AI Endpoint Footprinting:** Identification of exposed LLM APIs or RAG-related Vector Databases.
- [ ] **Secret & Credential Discovery:** Scanning public code repositories for leaked secrets, keys, and tokens.

## ☣️ PART IV: Breach, Identity & Infection Intelligence
- [ ] **Historical Breach Mapping:** Identification of corporate identities in historical leaks.
- [ ] **Infection Intelligence (Infostealers):** Identification of compromised devices, active session cookies, and autofill data.
- [ ] **Credential Pattern Analysis:** Prediction of current credentials based on historical reuse patterns.
- [ ] **Synthetic Identity Risk:** Audit of VIP media for AI-driven impersonation (Deepfake) potential.

---

## ⚖️ PART V: Synthesis & Risk Assessment
- [ ] **Attack Path Visualization:** Connecting findings into a logical kill-chain.
- [ ] **Automated Risk Scoring:** Applying CVSS/EPSS scoring to all identified vulnerabilities.
- [ ] **Business Impact Reporting:** AI-assisted translation of technical findings into a strategic risk profile.

---

## 🛠️ Requirements for Automated Execution

### 1. Mandatory Data Pipeline (APIs)
* **Global Discovery:** Infrastructure and service enumeration.
* **Credential Intel:** Access to cleartext breach databases and historical leaks.
* **Infection Intel:** Specialized access to Infostealer log databases (Critical).
* **Corporate Registry:** Access to international legal and company registries.

### 2. Execution Environment
* **Orchestration:** Python-based wrapper or MCP-enabled LLM.
* **Output Format:** All tool results must be converted to JSON before AI analysis.
