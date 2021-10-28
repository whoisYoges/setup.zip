#!/bin/bash

echo "You must login as normal user before running this script. Running this script as ROOT user is STRICTLY PROHIBITED."
echo "Stop the script now (ctrl + z) if you are running it as root user. If you dont, the script will automatically stop after 5 seconds."
sleep 5s
username=$(whoami)
if [[ $username == root ]] ; then
	exit
else
	echo "You are $username. You can proceed further..."
	echo "Installing Git..."
	sleep 2s
	doas pacman -Sy --needed git
	cd
	sleep 2s
	mkdir Gitclones
	cd Gitclones
	sleep 2s
	git clone https://aur.archlinux.org/yay.git
	sleep 2s
	git clone https://github.com/YogeshLamichhane/setup.zip
	sleep 2s
	git clone https://github.com/YogeshLamichhane/lwalpapers
	sleep 2s
	git clone https://github.com/YogeshLamichhane/anime-terminal
	sleep 2s
	git clone https://github.com/pystardust/ytfzf
	clear
	ls
	sleep 2s
	cd yay
	clear
	ls
	echo "Installing yay..."
	makepkg -si
	cd
	yay -Sy --needed accounts-qml-module acl adobe-source-code-pro-fonts adwaita-icon-theme alacritty alsa-card-profiles alsa-lib alsa-plugins alsa-topology-conf alsa-ucm-conf aom archlinux-keyring argon2 at-spi2-atk at-spi2-core atk atkmm attica attr audit autoconf automake avahi babl base bash binutils bison blas bluez-libs boost-libs botan box2d brave-bin breeze-icons brotli btrfs-progs bzip2 c-ares ca-certificates ca-certificates-mozilla ca-certificates-utils cairo cairomm cantarell-fonts cdparanoia celluloid celt ceph-libs cifs-utils clipmenu clipnotify clucene code convertlit coreutils cracklib cronie cryptsetup curl dav1d db dbus dbus-glib dconf desktop-file-utils device-mapper diffutils discord discount djvulibre dkms dmenu dmraid dnssec-anchors dosfstools double-conversion e2fsprogs ebook-tools efibootmgr efivar electron13 elfutils exiv2 expat fakeroot ffmpeg fftw file filesystem findutils fish flac flex fmt fontconfig freetype2 frei0r-plugins fribidi fzf gavl gawk gc gcc gcc-libs gcr gd gdbm gdk-pixbuf2 gegl gettext ghostscript giflib gimp git glib-networking glib2 glibc glibmm glslang glu gmp gnome-disk-utility gnu-free-fonts gnupg gnutls go gobject-introspection-runtime gparted gpgme gpm gptfdisk graphene graphite graphviz grep groff grub grub-customizer gsettings-desktop-schemas gsfonts gsm gst-plugins-base gst-plugins-base-libs gstreamer gtk-update-icon-cache gtk2 gtk3 gtkmm gtkmm3 gtksourceview4 gts guile gzip harfbuzz harfbuzz-icu hicolor-icon-theme hidapi htop hunspell hwids hwloc hyphen iana-etc icu ijs imath imlib2 iniparser intel-ucode iproute2 iptables iputils iso-codes jack2 jansson jasper jbig2dec jemalloc js78 json-c json-glib kaccounts-integration kactivities karchive kauth kbd kbookmarks kcmutils kcodecs kcompletion kconfig kconfigwidgets kcoreaddons kcrash kdbusaddons kdeclarative kded kdenlive keepassxc keyutils kfilemetadata kglobalaccel kguiaddons ki18n kiconthemes kio kirigami2 kitemviews kjobwidgets kjs kmod knewstuff knotifications knotifyconfig kpackage kparts kpty krb5 kservice ktextwidgets kwallet kwidgetsaddons kwindowsystem kxmlgui l-smash lame lapack lcms2 ldb ldns lensfun less libabw libaccounts-glib libaccounts-qt libaio libarchive libass libassuan libasyncns libatasmart libatomic_ops libavc1394 libavif libblockdev libbluray libbsd libbytesize libcanberra libcap libcap-ng libcddb libcdio libcdio-paranoia libcdr libcloudproviders libcolord libconfig libcroco libcups libdaemon libdatrie libdbusmenu-glib libdbusmenu-gtk3 libdbusmenu-qt5 libde265 libdrm libdvdnav libdvdread libe-book libebur128 libedit libelf libepoxy libepubgen libetonyek libev libevdev libevent libexif libexttextcat libfdk-aac libffi libfontenc libfreeaptx libfreehand libgcrypt libgee libgexiv2 libglvnd libgnomekbd libgpg-error libgudev libhandy libheif libibus libice libid3tag libidn libidn2 libiec61883 libimobiledevice libinih libinput libixion libjpeg-turbo libkexiv2 libksba liblangtag libldac libldap libmd libmfx libmm-glib libmng libmnl libmodplug libmpc libmspub libmwaw libmypaint libndp libnetfilter_conntrack libnewt libnfnetlink libnftnl libnghttp2 libnl libnm libnma libnotify libnsl libnumbertext libodfgen libogg libomxil-bellagio liborcus libp11-kit libpagemaker libpaper libpcap libpciaccess libpgm libpipeline libplacebo libplist libpng libproxy libpsl libpulse libpwquality libqxp libraw libraw1394 libreoffice-still librevenge librsvg libsamplerate libsasl libseccomp libsecret libsigc++ libsm libsndfile libsodium libsoup libsoup3 libsoxr libspectre libspiro libssh libssh2 libstaroffice libstemmer libtasn1 libteam libtg_owt libthai libtheora libtiff libtirpc libtommath libtool libunistring libunwind liburing libusb libusbmuxd libutempter libva libvdpau libvisio libvisual libvorbis libvpx libwacom libwebp libwmf libwpd libwpg libwps libx11 libxau libxaw libxcb libxcomposite libxcrypt libxcursor libxdamage libxdmcp libxext libxfixes libxfont2 libxft libxi libxinerama libxkbcommon libxkbcommon-x11 libxkbfile libxklavier libxml2 libxmu libxpm libxrandr libxrender libxshmfence libxslt libxss libxt libxtst libxv libxvmc libxxf86vm libyaml libyuv libzip libzmf licenses linux-api-headers linux-lts linux-lts-headers llvm-libs lm_sensors lmdb lpsolve lua52 luajit lvm2 lxappearance lz4 lzo m4 mailcap make man-db md4c mdadm media-player-info mesa metis minizip mkinitcpio mkinitcpio-busybox mlt mobile-broadband-provider-info mousepad mpfr mpv mtdev mujs mypaint-brushes1 ncurses ndctl neofetch neon netpbm nettle networkmanager networkmanager-dmenu-git nitrogen nm-connection-editor npth nspr nss oath-toolkit okular openal opencore-amr opendoas openexr openjpeg2 openmpi openssh openssl opus orc p11-kit pacman pacman-mirrorlist pam pambase pamixer pango pangomm parted patch pavucontrol pciutils pcre pcre2 perl perl-error perl-mailtools perl-parse-yapp perl-timedate phonon-qt5 phonon-qt5-gstreamer picom pinentry pipewire pixman pkgconf polkit polkit-qt5 poppler poppler-data poppler-glib poppler-qt5 popt procps-ng protobuf psmisc pulseaudio pulseaudio-alsa purpose python python-appdirs python-cachecontrol python-cffi python-chardet python-colorama python-contextlib2 python-cryptography python-distlib python-distro python-dnspython python-gobject python-html5lib python-idna python-markdown python-more-itertools python-msgpack python-ordered-set python-packaging python-pep517 python-pip python-ply python-progress python-pycparser python-pyopenssl python-pyparsing python-requests python-resolvelib python-retrying python-setuptools python-six python-toml python-tomli python-urllib3 python-webencodings qrencode qt5-base qt5-declarative qt5-graphicaleffects qt5-imageformats qt5-location qt5-multimedia qt5-networkauth qt5-quickcontrols qt5-quickcontrols2 qt5-speech qt5-svg qt5-webchannel qt5-webengine qt5-x11extras quazip raptor rasqal rav1e re2 readline redland reflector rest ripgrep rnnoise rsync rtkit rubberband run-parts samba sbc scrot sdl sdl2 sed shaderc shadow shared-mime-info signon-kwallet-extension signon-plugin-oauth2 signon-ui signond simplescreenrecorder slang smbclient snappy solid sonnet sound-theme-freedesktop speedtest-cli speex speexdsp spirv-tools sqlite srt sublime-text-4 suitesparse svt-av1 syndication sysfsutils systemd systemd-libs systemd-sysvcompat taglib talloc tar tbb tdb telegram-desktop tevent texinfo thin-provisioning-tools threadweaver thunderbird timeshift tracker3 tree tslib ttf-opensans tzdata uchardet udisks2 ufw unzip upower usbmuxd util-linux util-linux-libs v4l-utils vid.stab viewnior vim vim-runtime virtualbox virtualbox-ext-oracle virtualbox-host-dkms vmaf volume_key vte-common vte3 vulkan-icd-loader webrtc-audio-processing wget which wpa_supplicant x264 x265 xapp xarchiver xcb-proto xcb-util xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm xdg-utils xdotool xf86-input-libinput xf86-input-synaptics xf86-video-intel xfsprogs xkeyboard-config xmlsec xorg-fonts-encodings xorg-server xorg-server-common xorg-setxkbmap xorg-xauth xorg-xbacklight xorg-xhost xorg-xinit xorg-xkbcomp xorg-xmodmap xorg-xprop xorg-xrdb xorg-xset xorg-xsetroot xorgproto xsel xvidcore xxhash xz yay yubico-c yubico-c-client yubikey-personalization zeromq zimg zip zita-alsa-pcmi zita-resampler zlib zstd
	clear
	#installing yt-dlp in place of youtube-dl cause it's faster
	doas pip install yt-dlp
	sleep 2s
	doas ln /bin/yt-dlp /bin/youtube-dl

	#Adding samba rules
	echo "Creating samba rules at /etc/samba/smb.conf"
	doas echo "[$username]" > /etc/samba/smb.conf
	doas echo "comment = file sharing in same network" >> /etc/samba/smb.conf
	doas echo "path = /home/$username" >> /etc/samba/smb.conf
	doas echo "browseable = yes" >> /etc/samba/smb.conf
	doas echo "readonly = no" >> /etc/samba/smb.conf
	doas "adding $username to access samba"
	doas smbpasswd -a $username
	doas ufw allow cifs

	#adding current user to vboxusers group
	echo "adding $username to vboxusers group"
	doas usermod -aG vboxusers $username

	#creating directory and storing wallpapers
	doas mkdir -p /usr/share/backgrounds/custom/
	cd ~/Gitclones/lwalpapers
	doas cp -r *jpg /usr/share/backgrounds/custom/

	#placing config files
	cd ~/Gitclones/setup.zip/
	cp -r Applications ~/
	cp ~/Gitclones/setup.zip/main/home/.bashrc ~/
	cp -r ~/Gitclones/setup.zip/main/home/.config ~/.config
	doas cp ~/Gitclones/setup.zip/main/root/.bashrc /root/
	doas cp -r ~/Gitclones/setup.zip/main/root/.config /root/.config
	doas mv ~/Gitclones/setup.zip/others/70-synaptics.conf /etc/X11/xorg.conf.d/70-synaptics.conf
	#moving my utilities to local bin 
	cd ~/Gitclones/anime-terminal
	chmod +x anime-terminal
	doas mv anime-terminal /usr/local/bin/
	cd ~/Gitclones/ytfzf
	chmod +x ytfzf 
	doas mv ytfzf /usr/local/bin/
	rm -Rf Gitclones

	cd ~/Applications/suckless/dwm-6.2/
	make clean install
	sleep 2s
	cd ../slock-1.4/
	make clean install
	sleep 2s
	cd
fi

exit
exit
