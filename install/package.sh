sudo pacman -Rns --noconfirm - < install/pkgRm.txt


THIS_SCRIPT_DIR=$(dirname "$(realpath "$0")")
InstallLocation="$THIS_SCRIPT_DIR"

bash "$InstallLocation/packages/zsh.sh"
bash "$InstallLocation/packages/tmux.sh"
bash "$InstallLocation/packages/swaync.sh"
bash "$InstallLocation/packages/bluetooth.sh"
bash "$InstallLocation/packages/alacritty.sh"
bash "$InstallLocation/packages/nvim.sh"
bash "$InstallLocation/packages/chromium.sh"
bash "$InstallLocation/packages/flatpak.sh"
bash "$InstallLocation/packages/font.sh"
bash "$InstallLocation/packages/clipboard.sh"
bash "$InstallLocation/packages/canberra.sh"
bash "$InstallLocation/packages/screenshot.sh"