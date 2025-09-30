if [ "$1" == "install" ]; then
    sudo pacman -S swaync --needed --noconfirm
fi

if [ "$1" == "config" ]; then
    SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
    mkdir -p ~/.config
cp -r "$SCRIPT_DIR/../../config/swaync/"* ~/.config/swaync/
fi