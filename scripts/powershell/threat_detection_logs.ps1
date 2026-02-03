# Scripts de Detecció d'Activitat Sospitosa en Windows (Event Logs)

# 1. Inicis de Sessió Fallits (ID 4625) en els últims 3 dies
Get-WinEvent -FilterHashtable @{LogName='Security'; Id=4625; StartTime=(Get-Date).AddDays(-3)} |
Select-Object TimeCreated, @{Name="Usuario";Expression={($_.Properties[5]).Value}}, Message

# 2. Inicis de Sessió Exitosos (ID 4624) fora de l'horari laboral (20:00 - 06:00)
Get-WinEvent -FilterHashtable @{LogName='Security'; Id=4624; StartTime=(Get-Date).AddDays(-1)} |
Where-Object { $_.TimeCreated.Hour -lt 6 -or $_.TimeCreated.Hour -gt 20 } |
Select-Object TimeCreated, Message

# 3. Detecció de Creació de Comptes Nous (ID 4720) en l'última setmana
Get-WinEvent -FilterHashtable @{LogName='Security'; Id=4720; StartTime=(Get-Date).AddDays(-7)} |
Select-Object TimeCreated, Message

# 4. Cambis en Grups de Seguretat Crítics (ID 4728, 4732, 4756)
Get-WinEvent -FilterHashtable @{LogName='Security'; Id=4728,4732,4756; StartTime=(Get-Date).AddDays(-7)} |
Select-Object TimeCreated, Message

# 5. Execució de Programes des d'Ubicacions Sospitoses (Temp, AppData) - Requereix ID 4688 habilitat
Get-WinEvent -LogName Security -FilterXPath "*[System[(EventID=4688)]]" |
Where-Object { $_.Message -like "*AppData*" -or $_.Message -like "*Temp*" } |
Select-Object TimeCreated, Message

# 6. Intents de Modificació de GPOs (ID 5136)
Get-WinEvent -FilterHashtable @{LogName='Security'; Id=5136; StartTime=(Get-Date).AddDays(-5)} |
Where-Object { $_.Message -like "*Group Policy*" } |
Select-Object TimeCreated, Message

# 7. Correlació d'inicis de sessió per Usuari (Detecció de moviment lateral potencial)
Get-WinEvent -FilterHashtable @{LogName='Security'; Id=4624; StartTime=(Get-Date).AddDays(-1)} |
Select-Object TimeCreated, @{Name="Usuario";Expression={($_.Properties[5]).Value}}, @{Name="Origen";Expression={($_.Properties[18]).Value}} |
Group-Object Usuario
