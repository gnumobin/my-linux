################### Adding Chaotic AUR ###################

# # Getting Chaotic Aur key list
# pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
# pacman-key --lsign-key 3 056513887B78AEB
# # Installing Chaotic AUR on computer
# pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' --noconfirm --needed
# pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm --needed
# # Adding MirrorList to pacman.conf file 
# cp ./data/pacman.txt /etc/pacman.conf
# # update pacman
# pacman -Syu



################### Neofetch ###################
cp -r ./neofetch/* ~/.config/neofetch/



################### GTK-4 ###################
cp -r ./gtk-4.0/* ~/.config/gtk-4.0/
