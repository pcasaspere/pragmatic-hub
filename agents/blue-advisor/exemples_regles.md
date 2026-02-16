# Protocol de Detecció de Protocols Insegurs (Suricata)
# Objectiu: Detectar tràfic SMBv1, Telnet o HTTP intern.

alert tcp any any -> any 445 (msg:"SURICATA SMBv1 Request"; content:"|ff|SMB|72|"; depth:5; offset:4; classtype:protocol-command-decode; sid:1000001; rev:1;)
alert tcp any any -> any 23 (msg:"SURICATA Telnet Traffic Detected"; flow:to_server,established; classtype:policy-violation; sid:1000002; rev:1;)
