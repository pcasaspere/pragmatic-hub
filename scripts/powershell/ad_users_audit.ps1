# Scripts d'Auditoria d'Usuaris en AD

# 1. Llistar Usuaris amb Contraseñes que No Expiran
Get-ADUser -Filter * -Properties PasswordNeverExpires | Where-Object { $_.PasswordNeverExpires -eq $true } | Select-Object Name, SamAccountName

# 2. Identificar Comptes amb Privilegis d'Administrador de Domini
Get-ADGroupMember "Domain Admins" | Select-Object Name, SamAccountName, ObjectClass

# 3. Llistar Comptes Inactius per més de 90 Dies
Search-ADAccount -AccountInactive -UsersOnly -TimeSpan 90.00:00:00 | Select-Object Name, LastLogonDate

# 4. Detecció de Privilegis Perillosos (Ex: SID d'Administradors de Domini actius)
Get-ADUser -Filter * -Properties * | Where-Object {$_.SID -match "S-1-5-32-544" -and $_.Enabled -eq $true}

# 5. Exportar Membres de Grups Privilegiats a CSV
Get-ADGroupMember "Domain Admins" | Select-Object Name, SID | Export-Csv "Domain_Admins.csv" -NoTypeInformation
