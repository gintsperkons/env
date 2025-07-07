



sudo pacman -S hyprpaper --needed --noconfirm

mkdir -p ~/.config/hypr
mkdir -p ~/.config/wallpapers

# Get the script's directory
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Copy the file or directory (relative to script's directory)
cp -r "$SCRIPT_DIR/../../configs/hypr" ~/.config
cp -r "$SCRIPT_DIR/../../configs/wallpapers" ~/.config
