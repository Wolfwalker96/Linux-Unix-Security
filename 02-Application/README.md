# Sécurité des applications

## Isolation

### Isolation des privilèges

La forme d'isolation la plus basique. Consiste à définir l'accès à certain privilèges(applications) pour un utilisateur ou pour un groupe.
Se fait à l'aide de chmod afin de définir les droits de lecture, d'écriture et d'exécution.

### Isolation du filesystem

Utilisation de chroot (change root) afin de modifier la racine d'une application. Permet de créer une pseudo racine "/" à partire de laquelle se trouve
un nouvel arbre. 

Peut être utilisé pour:
	* Créer un environement de dévelopement
	* Isoler des services
	* Restreindre des accès
 
### Isolation par groupes de contrôle de ressources

Permet d'isoler des ressources tel que
	* les I/O
	* La mémoire
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
