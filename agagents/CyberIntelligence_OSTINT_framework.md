# 🛡️ Cyber Intelligence & OSINT Framework

---

## 🔑 Phase 0: Prerequisites & Client Seed Data
*Before execution, the client must provide the following "Seed Data" to minimize false positives and focus the audit.*

- [ ] **Core Domain List:** Primary and secondary domains, including legacy and marketing-specific TLDs.
- [ ] **Infrastructure Scopes:** Official IP ranges (CIDR) and dedicated hosting provider list.
- [ ] **Cloud Tenant Identifiers:** Organization IDs for AWS, Azure, and Google Cloud.
- [ ] **VIP/Partner List:** Names, titles, and corporate email addresses of key personnel and stakeholders.
- [ ] **Legal Entity Names:** Full registered names, VAT/NIF numbers, and known subsidiaries.
- [ ] **Letter of Authorization (LoA):** Signed document granting permission to perform the audit within specified Rules of Engagement (RoE).

---

## 🌐 Phase 1: Infrastructure & IP Intelligence (EASM)
- [ ] **Recursive Subdomain Enumeration:** Passive discovery via CT logs and active brute-forcing using custom wordlists.
- [ ] **Reverse DNS (PTR) Exploration:** Identifying hidden assets by scanning IP ranges provided in Phase 0.
- [ ] **ASN & IP Range Mapping:** Determining the organization's full network footprint and Autonomous System Number (ASN) associations.
- [ ] **IP Reputation & Blacklist Audit:** Checking if corporate IPs are flagged for spam, C&C activity, or as part of a botnet.
- [ ] **Port & Service Fingerprinting:** Full-spectrum scanning for exposed services (RDP, SSH, Database, SMB) and banner grabbing for versioning.
- [ ] **Geo-location & Hosting Analysis:** Mapping the physical location of servers to identify geopolitical risks or non-compliance with data residency laws.
- [ ] **DNS Security Validation:** Verifying SPF, DKIM, DMARC, DNSSEC, and BIMI records.

## ☁️ Phase 2: Cloud, SaaS & Secret Intelligence
- [ ] **Multi-Cloud Storage Discovery:** Fuzzing for public S3, Azure Blobs, and GCP Buckets using company keywords.
- [ ] **SaaS Data Leakage:** Searching for indexed internal data in Trello, Jira, Notion, Slack, and Confluence.
- [ ] **Public Repository Secret Scanning:** Real-time and historical scanning of GitHub, GitLab, and Bitbucket for leaked keys and `.env` files.
- [ ] **CI/CD Pipeline Exposure:** Identifying misconfigured Jenkins, CircleCI, or GitHub Actions that leak environment variables.

## 🤖 Phase 3: AI Surface & LLM Footprinting
- [ ] **AI Endpoint Discovery:** Identifying public LLM APIs or self-hosted model servers (Ollama/vLLM) that lack authentication.
- [ ] **Vector Database Audit:** Checking for exposed Pinecone, Milvus, or Weaviate instances containing RAG data.
- [ ] **RAG Knowledge Leakage:** Testing for internal document leakage via prompt injection on public-facing AI agents.
- [ ] **Shadow AI Inventory:** Detecting unauthorized AI platform usage via corporate domain telemetry.

---

## 🏛️ Phase 4: Conventional Firm Specialization (Law, Finance, Consulting)
- [ ] **Automated Metadata Harvesting:** Bulk downloading public PDFs/DOCXs to extract internal usernames, software versions, and local server paths.
- [ ] **Indexed Document Dorking:** Identifying "Confidential" or "Privileged" files indexed by search engines.
- [ ] **Corporate Structure Mapping:** Using official registries (OpenCorporates) to identify vulnerable subsidiaries.
- [ ] **Litigation & Filing Intelligence:** Analyzing court records and regulatory filings for technical details of the firm's infrastructure.
- [ ] **Office Security OSINT:** Analyzing high-res photos for badge types, hardware models, and physical security gaps.

---

## ☣️ Phase 5: Identity, Breach & Infection Intelligence
- [ ] **SOCMINT & Identity Correlation:** Mapping corporate aliases to personal footprints across 400+ platforms.
- [ ] **Cleartext Password Recovery:** Using commercial APIs (DeHashed/IntelX) to find plaintext credentials from historical breaches.
- [ ] **Infostealer Log Analysis:** Querying specialized databases (Hudson Rock) for malware-infected devices, active session tokens, and autofill data.
- [ ] **Deepfake Vulnerability Assessment:** Auditing available VIP media for potential AI voice/video cloning.

---

## ⚖️ Phase 6: Synthesis & Automated Reporting
- [ ] **Attack Path Visualization:** Correlating leaked secrets or exposed IPs into a logical kill-chain.
- [ ] **Automated Risk Scoring:** Applying CVSS/EPSS scores to all findings based on real-world exploitability.
- [ ] **Executive Summary:** AI-assisted generation of a high-level risk profile for stakeholders.

---

## 🧰 Expert Automation Toolset (CLI)

| Tool | Focus | Command for JSON/Automated Output |
| :--- | :--- | :--- |
| **naabu** | IP Ports | `naabu -host 1.1.1.1 -json -o ports.json` |
| **subfinder** | Domains | `subfinder -d domain.com -json -o subs.json` |
| **httpx** | Validation | `httpx -l subs.json -json -o active.json` |
| **nuclei** | Vulnerability | `nuclei -l active.json -json -o vulns.json` |
| **h8mail** | Breach Intel | `h8mail -t target@domain.com -j report.json` |
| **exiftool** | Metadata | `exiftool -json *.pdf > metadata.json` |

---

## 🔑 Required API Environment Variables
- `SECURITYTRAILS_API`: Domain & DNS history.
- `SHODAN_API`: IP & Service discovery.
- `DEHASHED_API`: Cleartext password recovery.
- `HUDSON_ROCK_API`: Infostealer & Infection intelligence.
- `OPENCORPORATES_API`: Legal/Conventional firm mapping.
- `OPENAI_API_KEY`: Automated report synthesis.

*Generated by Pere Casas v.2026*
