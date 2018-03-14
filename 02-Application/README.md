
# S�curit� des applications

## Isolation

### Isolation des privil�ges

&rarr; Chmod

La forme d'isolation la plus basique. Consiste � d�finir l'acc�s � certain privil�ges (applications) pour un utilisateur ou un groupe.


### Isolation du filesystem

&rarr; Chroot

Utilisation de chroot (change root) afin de modifier la racine d'une application. Permet de cr�er une pseudo racine "/" � partire de laquelle se trouve
un nouvel arbre. 

* Peut �tre utilis� pour
	* Cr�er un environement de d�velopement
	* Isoler des services
	* Restreindre des acc�s
 
### Isolation par groupes de contr�le de ressources

&rarr; Cg (Control group)
	
* Permet d'isoler des ressources tel que 
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
