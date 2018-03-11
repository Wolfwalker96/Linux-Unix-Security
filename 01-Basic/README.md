# Sécurité de base

## Configuration du mot de passe

### Configuration du mot de passe
* Mot de passe idéal &rightarrow; Entropie maximale
	* Écrire une phrase entière, simple à mémoriser
	* Plus de 25 charactères

La solution:
```bash
sudo apt-get install libpam-pwquality
nano /etc/pam.d/common-password
```

```bash
# Trouver les options du password
password	requisite	pam_pwquality.so retry=3

# Ajouter un nombre minimal de charactères
password	requisite	pam_pwquality.so retry=3 minlen=25
```
###

![https://xkcd.com/936/](01-Basic/password_strength.png)

## Permissions des fichiers

### Permission de bases (rappel)

 * **Discretionary access control (DAC)** Accées définit pour
	* L'utilisateur propriétaire
	* Le groupe propriétaire
	* Les autres utilisateurs
 * Droits possibles
	* Lire *r*
	* Ecrire *w*
	* Executer / Parcourir *x*

```bash
ls -l /bin/cat
	-rwxr-xr-x 1 root root 52080 mar  2  2017 /bin/cat
```

**Constatations** : Utilisation limitée !

### Exemple de limitation

| Groupe                   	| Lire 	| Ecrire 	| Exécuter 	|
|--------------------------	|------	|--------	|----------	|
| Chefs de services        	| Oui  	| Oui    	| Oui      	|
| Employés de comptabilité 	| Oui  	| Non    	| Oui      	|
| Autres employés          	| Non  	| Non    	| Non      	|

### Permission ACL

 * **Access Control List** Accès définit par une liste de contrôle d'accèes (à la Windows)
	* Permissions pour tout le monde (pas uniquement les propriétaires)
	* Plus de flexibilité
 * Necessite de monter le système de fichier avec l'option `acl`
 * S'utilise avec les commandes suivantes : 

```bash
setfacl -m "u:bob:r-x" alice # Ajoute une permission à un utilisateur
setfacl -m "g:aab:rwx" alice-and-bob # Ajoute une permission à un groupe
setfacl -x "user:cloe" alice-and-bob # Supprime une entrée 

```

## Firewall

### Firewall : Les bases

 * Parfeux Linux : `iptables`
 * Travail avec de Policy chains
	* Plusieurs types
		* **INPUT** : Traffic entrant
		* **OUTPUT** : Traffic sortant
		* **FORWARD** : Dans le cas de routing ou de NAT
	* Plusieurs règles dans une chaine
 * Action en cas de connexion
	* **ACCEPT** Accepte la connexion
	* **REJECT** Refuse la connexion
	* **DROP** Ne répond pas

