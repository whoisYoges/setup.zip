<h2 color=green>My Arch Setup with DWM, DMENU & ST</h2>

1. Images in the folder "<a href="https://github.com/YogeshLamichhane/myarchdwmsetup/tree/main/custom">custom</a>" are the <a href="https://github.com/YogeshLamichhane/myarchdwmsetup/tree/main/custom"> Wallpapers </a> i use. (I use <a href="https://wiki.archlinux.org/title/Nitrogen">nitrogen</a> to set up my wallpaper.)

2. <a href="https://github.com/YogeshLamichhane/myarchdwmsetup/tree/main/packages">packages</a> folder containsts the list of packages that i use and have installed on my machine and a script to install all of them at once.

3. I don't like to use display manager to login to my Graphical Environment. I login from tty using <i color= green> startx </i> command with the help of <a href="https://github.com/YogeshLamichhane/myarchdwmsetup/blob/main/scripts/xinitrc">xinitrc </a>file. This file contains some startup applications and command to execute dwm.

4. <a href="https://github.com/YogeshLamichhane/myarchdwmsetup/tree/main/scripts/dwm-bar"> scripts/dwm-bar/</a> folder contains the scripts to show battery, volume and datetime in the statusbar (dwmbar).

5. <a href="https://github.com/YogeshLamichhane/myarchdwmsetup/tree/main/suckless">suckless</a> folder contains the patched version of dwm and simple terminal. (install base-devel package to compile and install these packages)
- dwm is patched with some keybindings to audio and brightness controlling keys.
- st is patched with alpha-patch for transparency and st-scrollback-patch & st-scrollback-mouse-patch for scrollback feature.
- I installed <a href="https://wiki.archlinux.org/title/Dmenu">dmenu</a> directly from the arch repository without any patch.

6. <a href="https://github.com/YogeshLamichhane/myarchdwmsetup/blob/main/70-synaptics.conf">70-synaptics.conf</a> is a file to be kept at /etc/X11/xorg.conf.d/70-synaptics.conf to enable tap to click and natural scrolling on your touchpad (if you are using laptop). (install <a href="https://wiki.archlinux.org/title/Libinput">xf86-input-libinput and xf86-input-synaptics</a>  packages to use the feature) (restart required to work)

Here's the preview of my setup.
![my arch setup with dwm, dmwnu and st](https://github.com/YogeshLamichhane/myarchdwmsetup/blob/main/myarchdwmsetup.png?raw=true)
