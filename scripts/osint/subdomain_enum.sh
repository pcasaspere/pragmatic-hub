#!/bin/bash
# Subdomain OSINT Enumeration Script
# Part of pragmatic-hub OSINT toolkit
# Usage: ./subdomain_enum.sh <domain>

DOMAIN="${1:-}"
if [ -z "$DOMAIN" ]; then
    echo "Usage: $0 <domain>"
    echo "Example: $0 example.com"
    exit 1
fi

# Load API keys if available
if [ -f ~/.env ]; then
    export $(grep -v '^#' ~/.env | xargs)
fi

OUTDIR="/tmp/osint_${DOMAIN}"
mkdir -p "$OUTDIR"

echo "[*] Starting OSINT enumeration for: $DOMAIN"
echo "[*] Output directory: $OUTDIR"

# 1. Certificate Transparency
echo "[+] Querying Certificate Transparency logs (crt.sh)..."
curl -s "https://crt.sh/?q=%.${DOMAIN}&output=json" -o "$OUTDIR/crtsh.json" 2>/dev/null
if [ -s "$OUTDIR/crtsh.json" ] && ! grep -q "DOCTYPE" "$OUTDIR/crtsh.json" 2>/dev/null; then
    python3 -c "
import json
with open('$OUTDIR/crtsh.json') as f:
    data=json.load(f)
subdomains=set()
for e in data:
    for d in e.get('name_value','').split('\\n'):
        d=d.strip().lower().replace('*.','')
        if d.endswith('.$DOMAIN') and d!='$DOMAIN':
            subdomains.add(d)
with open('$OUTDIR/subdomains_crtsh.txt','w') as f:
    f.write('\\n'.join(sorted(subdomains)))
print(f'    Found {len(subdomains)} subdomains from CT logs')
"
else
    echo "    [!] crt.sh unavailable"
fi

# 2. Wayback Machine
echo "[+] Querying Wayback Machine..."
curl -s "http://web.archive.org/cdx/search/cdx?url=*.${DOMAIN}/*&output=json&collapse=urlkey&limit=10000" \
  -o "$OUTDIR/wayback.json" 2>/dev/null
if [ -s "$OUTDIR/wayback.json" ]; then
    python3 -c "
import json,urllib.parse
with open('$OUTDIR/wayback.json') as f:
    data=json.load(f)
urls=set()
for entry in data[1:]:
    try:
        url=entry[2]
        parsed=urllib.parse.urlparse(url)
        if parsed.hostname and parsed.hostname.endswith('.$DOMAIN'):
            urls.add(parsed.hostname.lower())
    except: pass
with open('$OUTDIR/subdomains_wayback.txt','w') as f:
    f.write('\\n'.join(sorted(urls)))
print(f'    Found {len(urls)} subdomains from archives')
" 2>/dev/null
fi

# 3. Shodan (if API key available)
if [ -n "$SHODAN_API_KEY" ]; then
    echo "[+] Querying Shodan..."
    curl -s "https://api.shodan.io/dns/domain/${DOMAIN}?key=${SHODAN_API_KEY}" \
      -o "$OUTDIR/shodan.json" 2>/dev/null
    if [ -s "$OUTDIR/shodan.json" ]; then
        python3 -c "
import json
with open('$OUTDIR/shodan.json') as f:
    data=json.load(f)
subdomains=set()
for entry in data.get('data',[]):
    sd=entry.get('subdomain','')
    if sd:
        subdomains.add(f'{sd}.$DOMAIN')
with open('$OUTDIR/subdomains_shodan.txt','w') as f:
    f.write('\\n'.join(sorted(subdomains)))
print(f'    Found {len(subdomains)} subdomains from Shodan')
" 2>/dev/null
    fi
else
    echo "    [!] Shodan API key not found in ~/.env"
fi

# Combine all results
echo "[*] Combining results..."
cat $OUTDIR/subdomains_*.txt 2>/dev/null | grep -E "^[^-]" | sort -u > "$OUTDIR/all_subdomains.txt"
TOTAL=$(wc -l < "$OUTDIR/all_subdomains.txt" 2>/dev/null || echo 0)
echo "[✓] Total unique subdomains: $TOTAL"
echo "[✓] Results saved to: $OUTDIR/all_subdomains.txt"
