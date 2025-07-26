




sudo pacman -S --noconfirm --needed \
  waybar \
  hyprland \
  pipewire pipewire-audio pipewire-pulse wireplumber \
  networkmanager network-manager-applet \
  power-profiles-daemon \
  lm_sensors \
  brightnessctl \
  upower acpi \
  mpd mpc \
  playerctl \
  xdg-desktop-portal xdg-desktop-portal-hyprland \
  libappindicator-gtk3 \
  python python-dbus \
  acpid



sudo systemctl enable --now NetworkManager.service
sudo systemctl enable --now mpd.service
sudo systemctl enable --now acpid.service
