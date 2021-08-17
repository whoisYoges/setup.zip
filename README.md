<h2 color=green>My Arch Setup with DWM & ST</h2>
Images in the folder "<a href="https://github.com/YogeshLamichhane/myarchdwmsetup/tree/main/custom">custom</a>" are the <a href="https://github.com/YogeshLamichhane/myarchdwmsetup/tree/main/custom"> Wallpapers </a> i use. (I use <a href="https://wiki.archlinux.org/title/Nitrogen">nitrogen</a> to set up my wallpaper.)

I don't like to use display manager to login to my Graphical Environment. I login from tty using <i color= green> startx </i> command with the help of <a color=blue href="https://github.com/YogeshLamichhane/myarchdwmsetup/blob/main/scripts/xinitrc">xinitrc </a>file. This file contains some startup applications and command to execute dwm.

<a href="https://github.com/YogeshLamichhane/myarchdwmsetup/tree/main/scripts/dwm-bar"> scripts/dwm-bar/</a> folder contains the scripts to show battery volume and date in the statusbar (dwmbar).

<a href="https://github.com/YogeshLamichhane/myarchdwmsetup/tree/main/suckless">suckless</a> folder contains the patched version of dwm and simple terminal. (install base-devel package to compile and install these packages)
- dwm is patched with some keybindings to audio and brightness controlling keys.
- st is patched with alpha-patch for transparency and st-scrollback-patch & st-scrollback-mouse-patch for scrollback feature.

<a href="https://github.com/YogeshLamichhane/myarchdwmsetup/blob/main/70-synaptics.conf">70-synaptics.conf</a> is a file to be kept at /etc/X11/xorg.conf.d/70-synaptics.conf to enable tap to click and natural scrolling on your touchpad (if you are using laptop). (install <a href="https://wiki.archlinux.org/title/Libinput">xf86-input-libinput and xf86-input-synaptics</a>  packages to use the feature) (restart required)
