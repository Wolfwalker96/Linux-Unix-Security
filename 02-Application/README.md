# S�curit� des applications

## Isolation

### Isolation des privil�ges

La forme d'isolation la plus basique. Consiste � d�finir l'acc�s � certain privil�ges(applications) pour un utilisateur ou pour un groupe.
Se fait � l'aide de chmod afin de d�finir les droits de lecture, d'�criture et d'ex�cution.

### Isolation du filesystem

Utilisation de chroot (change root) afin de modifier la racine d'une application. Permet de cr�er une pseudo racine "/" � partire de laquelle se trouve
un nouvel arbre. 

Peut �tre utilis� pour:
	* Cr�er un environement de d�velopement
	* Isoler des services
	* Restreindre des acc�s
 
### Isolation par groupes de contr�le de ressources

Permet d'isoler des ressources tel que
	* les I/O
	* La m�moire
	* Le CPU
	* Et bien d'autres...

	
	
### LXC (logiciel d'isolation de foufou, a voir)

### chroot

### Nouveau Format de package
 * Snap
	 * Canonical
	 * Isolation par LXC
 * Flatpack
	 * GNOME, Red Hat
