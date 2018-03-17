
# Sécurité des applications

## Isolation

### Isolation des privilèges

&rarr; Chmod

La forme d'isolation la plus basique. Consiste à définir l'accès à certain privilèges (applications) pour un utilisateur ou un groupe.


### Isolation du filesystem

&rarr; Chroot

Utilisation de chroot (change root) afin de modifier la racine d'une application. Permet de créer une pseudo racine "/" à partire de laquelle se trouve
un nouvel arbre. 

* Peut être utilisé pour
	* Créer un environement de dévelopement
	* Isoler des services
	* Restreindre des accès
 
### Isolation par groupes de contrôle de ressources

&rarr; Cg (Control group)
	
* Permet d'isoler des ressources telles que 
	* les I/O
	* La mémoire
	* Le CPU
	* Et bien d'autres...

	
	
### Système d'isolation clé en main

* Docker
* LXC

### Nouveau gestionnaire de paquets

 * Snap
	 * Canonical
	 * Isolation par LXC
	 * IoT, Server, Cloud, Bureau
	 * Package auto-suffisant
	 * Mise à jour transactionnel
 * Flatpak
	 * GNOME, Red Hat
	 * Application de bureau
	 * Multiple source
 * Point communs
	 * Système de "permission"
	 * Paquets compatible entre distribution
