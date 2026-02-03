#!/usr/bin/env python3
import re
from collections import Counter
import sys

def analyze_ssh_logs(log_file='/var/log/auth.log'):
    failed_attempts = []
    invalid_users = []
    
    try:
        with open(log_file, 'r') as f:
            for line in f:
                if "Failed password" in line:
                    # Extraure IP i usuari
                    ip_match = re.search(r'from (\d+\.\d+\.\d+\.\d+)', line)
                    user_match = re.search(r'for (invalid user )?(\S+) from', line)
                    if ip_match:
                        failed_attempts.append(ip_match.group(1))
                    if user_match:
                        invalid_users.append(user_match.group(2))
    except FileNotFoundError:
        print(f"Error: No s'ha trobat el fitxer {log_file}")
        return

    print("=== SSH SECURITY REPORT ===")
    print(f"Total intents fallits: {len(failed_attempts)}")
    
    print("\nTop 5 IPs atacants:")
    for ip, count in Counter(failed_attempts).most_common(5):
        print(f"- {ip}: {count} vegades")
        
    print("\nTop 5 Usuaris objectiu:")
    for user, count in Counter(invalid_users).most_common(5):
        print(f"- {user}: {count} intents")

if __name__ == "__main__":
    log_path = '/var/log/auth.log' if len(sys.argv) < 2 else sys.argv[1]
    analyze_ssh_logs(log_path)
