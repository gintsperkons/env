sudo pacman -Rns --noconfirm - < install/pkgRm.txt


THIS_SCRIPT_DIR=$(dirname "$(realpath "$0")")
InstallLocation="$THIS_SCRIPT_DIR"

bash "$InstallLocation/packages/bluetooth.sh"
bash "$InstallLocation/packages/alacritty.sh"
bash "$InstallLocation/packages/nvim.sh"