pacman -Sy
timedatectl set-ntp true
clear
lsblk
echo "Please enter disk to work on (example /dev/sda): "
read drive
clear
echo "THIS WILL FORMAT AND DELETE ALL DATA ON THE DISK!!!"
echo "Are you sure you want to continue? ELSE, You've got 10 seconds to stop it [ctrl + c]!!! "
sleep 10s
clear
echo "Now make parttitons according to your needs."
echo "root, home, swap, boot/efi partitions need to be created. home and swap partitions are optional but recommended. "
# you can use cfdisk or gdisk in place of fdisk as well.
fdisk $drive
clear
lsblk
echo "Enter the root partition (eg: /dev/sda1): "
read rootpartition
mkfs.ext4 $rootpartition
mount $rootpartition /mnt
clear
lsblk
read -p "Did you also create separate home partition? [y/n]: " answerhome
if [[ $answerhome = y ]] ; then
	echo "Enter home partition (eg: /dev/sda2): "
	read homepartition
	mkfs.ext4 $homepartition
	mkdir /mnt/home
	mount $homepartition /mnt/home
fi
clear
lsblk
read -p "Did you also create swap partition? [y/n]: " answerswap
if [[ $answerswap = y ]] ; then
	echo "Enter swap partition (eg: /dev/sda3): "
	read swappartition
	mkswap $swappartition
	swapon $swappartition
fi
clear
lsblk
echo "Enter EFI partition (eg: /dev/sda4): "
read efipartition
mkfs.vfat -F 32 $efipartition
mkdir -p /mnt/boot/efi
mount $efipartition /mnt/boot/efi
clear
lsblk
sleep 2s
#Replace kernel header file and with your requirements (eg linux-zen linux-zen-headers)
#replace intel-ucode with amd-ucode if you use amd processor
pacstrap /mnt base linux-lts linux-lts-headers intel-ucode
sleep 2s
genfstab -U /mnt >> /mnt/etc/fstab

sed '1,/^#part2$/d' base-install.sh > /mnt/post_base-install.sh
chmod +x /mnt/post_base-install.sh
arch-chroot /mnt ./post_base-install.sh

clear
umount -R /mnt
echo "Pre-Installation Finished. Rebooting in 5 seconds... "
sleep 5s
reboot

#part2
#Replace Asia/Kathmandu with your timezone
clear
ln -sf /usr/share/zoneinfo/Asia/Kathmandu /etc/localtime
hwclock --systohc
clear
sleep 2s
echo "Installing networkmanager, grub, fish shell and base-devel package excluding sudo."
pacman -Sy --needed networkmanager fish autoconf automake binutils bison fakeroot file findutils flex gawk gcc gettext grep groff gzip libtool m4 make patch pkgconf sed texinfo which pacman grub efibootmgr
sleep 2s
sed 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen > /etc/locale2.gen
mv /etc/locale2.gen /etc/locale.gen
clear
echo "checking locale.gen file if its ok or not."
cat /etc/locale.gen | grep US
sleep 3s
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
clear
echo "Enter your computer name: "
read hostname
echo $hostname > /etc/hostname
curl https://raw.githubusercontent.com/whoisYoges/internet-crap/main/hosts > /etc/hosts
clear
echo "Enter password for root user: "
passwd
clear
echo "Installing grub bootloader in /boot/efi parttiton"
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB --removable
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable NetworkManager
clear

echo "Enter username to add a regular user: "
read username
useradd -m -g users -G wheel -s /bin/fish $username
echo "Enter password for $username : "
passwd $username
usermod --shell /bin/fish root
clear
echo "NOTE: ALWAYS REMEMBER THIS USERNAME AND PASSWORD YOU PUT JUST NOW."
sleep 3s

#installing doas 
# doas is used in place of sudo package cause sudo is bloated.
echo "using doas in place of sudo cause we don't use much of its feature in desktop."
pacman -Sy --needed opendoas 

#Adding superuser previliages to the user in wheel group (for doas)
echo "permit keepenv :wheel" > /etc/doas.conf
sleep 2s
# adding doas to be used in place of (default)sudo while compiling packages from source (PKGBUILD)

cd /etc/
cp makepkg.conf makepkg.conf.orig
sed '/PACMAN_AUTH=()/d' makepkg.conf > makepkg2.conf
mv makepkg2.conf makepkg.conf
echo "PACMAN_AUTH=(doas)" >> makepkg.conf
echo "checking if doas is applied for PKGBUILD or not."
cat makepkg.conf | less
sleep 3s
cd

rm /post_base-install.sh
exit
