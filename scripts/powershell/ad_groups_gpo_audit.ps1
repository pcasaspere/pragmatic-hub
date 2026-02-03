# Scripts d'Auditoria de Grups i GPOs

# 1. Auditar Canvis de Membresia en Grups Crítics (últims 7 dies)
Get-WinEvent -FilterHashtable @{LogName='Security'; Id=4732,4733; StartTime=(Get-Date).AddDays(-7)} | Format-Table TimeCreated, Message

# 2. Llistar GPOs que afecten les contrasenyes
Get-GPOReport -All -ReportType XML | Select-String -Pattern "MinimumPasswordLength|PasswordHistorySize|MaximumPasswordAge"
