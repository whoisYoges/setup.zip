# setup.zip
boot the arch installation media and get base-install.sh and execute it for the minimal installation of arch linux.

Then, after reboot, login with regular user, get post-install.sh and execute it to get my dwm setup. 
### Incluings
 - setup.zip
 	- Applications
 		- scripts
 		- suckless
 			- dwm-6.2	(my build of dwm; alpha+fullgaps patch applied and some shortcuts added)
 			- slock-1.4	(my build of slock; unlock_screen patch applied)
 	- main
 		- home
 			- .config (contains configuration files of some basic packages)
 		- root
 			- .config (contains configuration files of some basic packages)
 	- others (contains settings for synaptic touchpad options)
 	- supports (contains additional helper files creating this script)
 	- base-install.sh (base installation of arch in few clicks)
   - post-install.sh (get my arch dwm setup in a click)

### Usage
 1. Get the base-installation script in your arch installation media.
```
curl https://raw.githubusercontent.com/YogeshLamichhane/setup.zip/main/base-install.sh > base-install.sh
```
 2. make necessary changes in the script according to your needs.

 3. make it executable
```
chmod +x base-install.sh
```
 4. execute the script
```
./base-install.sh
```
 5. After reboot, login with regular user you created, and then get the post-installation script.
```
curl https://raw.githubusercontent.com/YogeshLamichhane/setup.zip/main/post-install.sh > post-install.sh
```
 6. make necessary changes in the script according to your needs.

 7. make it executable
```
chmod +x post-install.sh
```
 8. execute the script
```
./post-install.sh
```
## Preview of my setup
![my arch dwm preview](screenshot_000.png)


#### Just A Note
get the list of all the installed packages in arch based machine: `pacman -Q | awk '{print $1}' > packages.txt`
