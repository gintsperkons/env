sudo pacman -S flatpak xdg-desktop-portal xdg-desktop-portal-gtk --needed --noconfirm
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
systemctl --user enable --now xdg-desktop-portal xdg-desktop-portal-gtk
