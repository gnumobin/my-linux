#!/bin/bash

# Define all packages we need for this configuration
packages=(
    # Better UI 
    power-profiles-daemon gst-plugin-pipewire ttf-dejavu ttf-jetbrains-mono ttf-nerd-fonts-symbols la-capitaine-icon-theme gnome-browser-connector gnome-bluetooth
)

################### Adding Chaotic AUR ###################

# Getting Chaotic Aur key list
pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 3056513887B78AEB
# Installing Chaotic AUR on computer
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' --noconfirm --needed
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm --needed
# Adding MirrorList to pacman.conf file 
cp ./data/pacman.txt /etc/pacman.conf
# update pacman
pacman -Syu


################### Configure neofetch ###################
# create folder
mkdir -p ~/.config/neofetch
# copy files
cp -r ./neofetch/ascii.txt ~/.config/neofetch
cp -r ./neofetch/config.conf ~/.config/neofetch


################### Configure theme ###################
# create folder
mkdir -p ~/.local/share/themes
# copy files
cp -r ./theme/colloid ~/.local/share/themes
# set theme
gsettings set org.gnome.desktop.interface gtk-theme "colloid"


################### Configure GTK-4 ###################
cp -r ./gtk-4.0 ~/.config/



################### Configure icon ###################
gsettings set org.gnome.desktop.interface icon-theme "la-capitaine"



################### Configure fonts ###################
# create folder
mkdir -p ~/.local/share/fonts
# copy files
cp -r ./font/SF-Pro-Text-Regular.otf ~/.local/share/fonts
cp -r ./font/SFUIDisplay-Regular.otf ~/.local/share/fonts
# set font
gsettings set org.gnome.desktop.interface font-name "SF Pro Text 11"
gsettings set org.gnome.desktop.interface document-font-name "SF Pro Text 11"
# set terminal font
gsettings set org.gnome.desktop.interface monospace-font-name "JetBrains Mono 11"


################### Install Define Packages ###################
pacman -S --noconfirm --needed "${packages[@]}"


################### Extensions ###################
cp -r ./extensions ~/.local/share/gnome-shell/extensions
# enable 
gnome-extensions enable appmenu-is-back@fthx
gnome-extensions enable clipboard-indicator@tudmotu.com
