
# Sécurité des applications

## Isolation manuelle

### Types d'Isolation

* Privilège `chmod`
* Filesystem `chroot`
* Groupes de contrôle de ressources `cgroups`
* Namespaces noyau

### Isolation du filesystem

`chroot`

Utilisation de `chroot` (change root) afin de modifier la racine d'une application. Permet de créer une pseudo racine "/" à partir de laquelle se trouve
un nouvel arbre.

* Peut être utilisé pour
	* Créer un environnement de développement
	* Isoler des services
	* Restreindre des accès

### Isolation par groupes de contrôle de ressources

`cgroups`

* Permet d'isoler des ressources telles que
	* les I/O
	* La mémoire vive
	* Le CPU
	* Et bien d'autres...


### Isolation par Namespaces

* Aspect fondamental des containers dans Linux
* Permet de gérer l'accès aux ressources par un processus
* Un processus ne peut accèdes qu'aux ressources de son namespace
	* Mais plusieurs namespaces peuvent avoir en commun les même ressources
* Les principaux namespaces sont:
	* Mouns (`mnt`)
	* Process ID (`pid`)
	* Network (`net`)
	* Interprocess Communication (`ipc`)
	* User ID (`user`)
	* Control group (`cgroup`)

**Note :** Un processus peut lui-même créer de nouveaux namespaces.

## Isolation clé en main

### Système d'isolation clé en main

* Docker
 	* Gestionnaire de conteneurs
* LXC
	* Système de virtualisation


### LXC

* Contraction pour Linux container
* Système de virtualisation par isolation
* Utilise les fonctionnalités de `cgroups` et les namespaces du noyau
* Isole des 'environnements' Linux
* Les environnements partagent le même noyau
* Mais l'environnement d’exécution est virtualisé
	* Processeur
	* RAM
	* Réseau
	* Système de fichiers

Docker était à l'origine basé sur LXC, permettant d'isoler les différent conteneurs. Il utilises maintenant `libcontainer`.



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
