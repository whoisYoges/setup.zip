# setup.zip
boot the arch or arch-based installation media and get install.sh and execute it to get my setup of dwm.
### Incluings
 - setup.zip
 	- Applications
 		- scripts
 		- suckless
 			- dwm-6.2	(my build of dwm; alpha+fullgaps patch applied and some shortcuts added)
 			-slock-1.4	(my build of slock; unlock_screen patch applied)
 	- main
 		- home
 			- .config (contains configuration files of some basic packages)
 		- root
 			- .config (contains configuration files of some basic packages)
 	- others (contains settings for synaptic touchpad options)
 	- supports (contains additional helper files creating this script)
 	- install.sh (main executable script)

### Usage
 1. Get the script in your media.
```
	curl https://raw.githubusercontent.com/YogeshLamichhane/setup.zip/master/install.sh > install.sh
```
 2. make necessary changes in the script according to your needs.

 3. make it executable
```
	chmod +x install.sh
```
 4. execute the script
```
	./install.sh
```

### Note
get the list of all the installed packages in arch based machine:

	pacman -Q | awk '{print $1}' > packages.txt

