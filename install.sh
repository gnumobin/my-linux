################### Variables ###################
packages=(
    ttf-dejavu ttf-jetbrains-mono ttf-nerd-fonts-symbols
)


################### Dependencies ###################
sudo pacman -S --noconfirm --needed "${packages[@]}"


################### Neofetch ###################
cp -r ./neofetch ~/.config/


################### GTK-4 ###################
cp -r ./gtk-4.0 ~/.config/


################### Extensions ###################
cp -r ./extensions ~/.local/share/gnome-shell
# enable 
gnome-extensions enable appmenu-is-back@fthx
gnome-extensions enable clipboard-indicator@tudmotu.com


################### Fonts ################### 
cp -r ./fonts ~/.local/share/
# set fonts
gsettings set org.gnome.desktop.interface font-name "SF Pro Text 11"
gsettings set org.gnome.desktop.interface document-font-name "SF Pro Text 11"


################### Fonts ################### 
mkdir -p ~/.local/share/themes
cp -r ./theme/colloid ~/.local/share/themes
# set themes
gsettings set org.gnome.desktop.interface gtk-theme "Colloid-Purple-Dark"
