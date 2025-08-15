# Get the script's directory
BASE_DIR=$(dirname "$(realpath "$0")")

echo $BASE_DIR

#setup shell
. "$BASE_DIR/runs/shell_zsh.sh"
. "$BASE_DIR/runs/alacritty.sh"
. "$BASE_DIR/runs/tmux.sh"
. "$BASE_DIR/runs/flatpak.sh"
. "$BASE_DIR/runs/font-nerd.sh"

#setup apps
. "$BASE_DIR/runs/paru.sh"
. "$BASE_DIR/runs/browser_zen.sh"
. "$BASE_DIR/runs/vscode.sh"

#lock Screen
. "$BASE_DIR/runs/lockscreen-sddm.sh"

#setup bar
