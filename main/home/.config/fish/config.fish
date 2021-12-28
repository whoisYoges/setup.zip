if status is-interactive
    # Commands to run in interactive sessions can go here
set fish_greeting
end
fish_add_path /home/invalid/Applications/Flutter/flutter/bin
fish_add_path /home/invalid/Applications/AndroidStudio/android-studio/bin
alias loadvrmodules "doas modprobe vboxdrv"
alias letsgobaby "startx /home/invalid/Applications/scripts/xinitrc"
alias updatemirrorlist "doas reflector --latest 15 --sort rate --save /etc/pacman.d/mirrorlist"
alias startvirtmgr "doas systemctl start --now libvirtd"
alias clearfile "shred -uzvn3"
alias countfiles "ls | wc -l"
alias pickcolor "colorpicker --short --one-shot --preview | xclip -selection clipboard"
alias neofetch uwufetch
