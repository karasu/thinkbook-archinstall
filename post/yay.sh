#!/bin/sh

# Installs yay using user with id 1000. Run as root.

YAY="/thinkbook/yay"
USR=`id -un 1000`

git clone https://aur.archlinux.org/yay.git $YAY
chown -R $USR:$USR $YAY
cd $YAY
su -c 'makepkg -sf --needed --noconfirm' $USR
pacman -U --needed --noconfirm yay-*-x86_64.pkg.tar.zst
