if [ "$1" == "install" ]; then
    sudo pacman -S rofi --noconfirm --needed
fi

if [ "$1" == "config" ]; then
    SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
    mkdir -p ~/.config/rofi
    cp -r "$SCRIPT_DIR/../../config/rofi/"* ~/.config/rofi/
fi