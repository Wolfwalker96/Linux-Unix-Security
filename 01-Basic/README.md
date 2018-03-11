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

## Permissions Linux


### Permissions Linux

### Permission ACL
