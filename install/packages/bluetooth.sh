if [ "$1" == "install" ]; then
    sudo pacman -S bluez bluez-utils blueman --needed --noconfirm
fi

if [ "$1" == "enable" ]; then
    sudo systemctl enable --now bluetooth.service
fi
