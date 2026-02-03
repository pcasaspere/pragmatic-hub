# Scripts de Resposta a Incidents i Hardening de AD

# 1. Rotació de la Contrasenya krbtgt (Mitiga Golden Ticket) - CIS 16.3
# ATENCIÓ: Es recomana fer-ho dues vegades amb un interval de temps per forçar la invalidació de tickets antics.
# Set-ADAccountPassword -Identity krbtgt -Reset -NewPassword (ConvertTo-SecureString "N3w-Strong-P@ss!" -AsPlainText -Force)

# 2. Forçar Tancament de Sessions Actives (Resposta a Incidents)
# Aquest script intenta tancar la sessió a tots els equips del domini.
# Invoke-Command -ComputerName (Get-ADComputer -Filter *).Name -ScriptBlock {logoff /SERVER:$env:COMPUTERNAME /V}

# 3. Habilitar Auditoria Detallada en AD (Logon de comptes) - CIS 16.2
# Auditpol /set /category:"Account Logon" /success:enable /failure:enable

# 4. Detecció de SPN Duplicats (Indica risc de Kerberoasting) - MITRE T1558.003
Get-ADUser -Filter {ServicePrincipalName -ne "$null"} -Properties ServicePrincipalName | Select-Object Name, ServicePrincipalName

# 5. Detecció de Computadores No Parcheades o amb OS antic
Get-ADComputer -Filter * -Properties OperatingSystem, LastLogonDate | Where-Object {$_.OperatingSystem -notmatch "Windows 10|2019|2022"}

# 6. Auditoria de GPOs amb Configuracions Insegures (Exemple: NTLMv1) - MITRE T1558
Get-GPO -All | Where-Object { (Get-GPOReport -Guid $_.Id -ReportType Xml).Contains("NTLMv1") }
