# 🛡️ Lab Cybersécurité Débutant – Vagrant & VirtualBox

Bienvenue dans ce **laboratoire de cybersécurité** destiné aux **débutants**. Ce projet propose un environnement clé en main, déployé via **Vagrant** et **VirtualBox**, pour s’initier à plusieurs attaques courantes en sécurité informatique :

- 🔐 Attaques par **brute force**
- 💉 **Injection de code** (SQLi, Command Injection)
- ⚠️ Failles **XSS (Cross-Site Scripting)**

## 📁 Contenu du dépôt

TODO - une fois finalisé


## 🚀 Objectifs pédagogiques

- Comprendre les mécanismes des attaques simples en cybersécurité
- Apprendre à manipuler des machines virtuelles en environnement isolé
- Se familiariser avec les outils d’exploitation courants (Hydra, Burp Suite, etc.)
- Prendre conscience des erreurs de développement à éviter

## 🛠️ Prérequis

- [Vagrant](https://www.vagrantup.com/) (>= 2.x)
- [VirtualBox](https://www.virtualbox.org/) (>= 6.x)
- Environnement compatible Linux/macOS/Windows

## 📦 Installation

1. Clonez ce dépôt :
   ```bash
   git clone https://github.com/votre-utilisateur/lab-cybersecurite-debutant.git
   cd lab-cybersecurite-debutant
Lancez l’environnement :

2. a compléter une fois finalisé

## 🧪 Scénarios proposés

### 1. 🔐 Brute Force – Formulaire de connexion

**Objectif :** Utiliser un outil comme `Hydra` pour deviner un mot de passe à partir d’une liste de mots (wordlist) sur un formulaire de connexion vulnérable.

**Compétences visées :**
- Comprendre le fonctionnement d'une attaque par force brute
- Savoir détecter une interface vulnérable
- Configurer un outil d'automatisation d'attaque

---

### 2. 💉 Injection SQL (SQLi)

**Objectif :** Exploiter une faille d'injection SQL pour contourner l'authentification ou extraire des données sensibles.

**Compétences visées :**
- Identifier une entrée vulnérable à l'injection
- Construire une requête malveillante
- Comprendre les erreurs SQL révélatrices

---

### 3. ⚠️ XSS (Cross Site Scripting)

**Objectif :** Injecter du code JavaScript malveillant dans un champ de saisie (ex: commentaire) pour afficher une alerte ou voler des cookies.

**Compétences visées :**
- Comprendre la différence entre XSS réfléchi et persistant
- Créer une charge utile (payload) simple
- Observer les conséquences d’un manque de filtrage

---

### 4. 🖥️ Injection de commandes système

**Objectif :** Exploiter un champ de formulaire vulnérable pour exécuter des commandes sur le serveur (ex: `ping`, `ls`, etc.).

**Compétences visées :**
- Repérer un traitement système sur les données utilisateurs
- Injecter des séparateurs de commande (`;`, `&&`, etc.)
- Comprendre les conséquences d'une mauvaise validation côté serveur
