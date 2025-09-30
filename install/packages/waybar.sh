if [ "$1" == "install" ]; then
  sudo pacman -S waybar --noconfirm --needed
fi

if [ "$1" == "config" ]; then
    SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
    mkdir -p ~/.config/waybar
    cp -r "$SCRIPT_DIR/../../config/waybar/"* ~/.config/waybar/
fi