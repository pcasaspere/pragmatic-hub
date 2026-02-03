# Scripts de Seguretat de Sistema i Serveis

# 1. Detectar Equips sense Antivirus Registrat en WMI
Get-WmiObject -Namespace "root\SecurityCenter2" -Class AntiVirusProduct | Select-Object displayName, productState

# 2. Revisar Ports Escuchant en el Sistema
Get-NetTCPConnection -State Listen | Select-Object LocalAddress, LocalPort, OwningProcess

# 3. Detectar Serveis Configurats amb Comptes de Domini
Get-WmiObject Win32_Service | Where-Object { $_.StartName -like "*DOMAIN*" } | Select-Object Name, StartName

# 4. Exportar Permisos NTFS d'una Carpeta (Auditoria d'Accesos)
# Canviar "C:\CarpetaSegura" per la ruta desitjada
(Get-Acl "C:\CarpetaSegura").Access | Format-Table IdentityReference, FileSystemRights, AccessControlType
