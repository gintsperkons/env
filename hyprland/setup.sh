


# Get the script's directory
BASE_DIR=$(dirname "$(realpath "$0")")

echo $BASE_DIR

#setup shell
. "$BASE_DIR/runs/shell_zsh.sh"

#setup nvim
. "$BASE_DIR/runs/neovim.sh"

#setup Shell
. "$BASE_DIR/runs/alacritty.sh"
. "$BASE_DIR/runs/tmux.sh"


#setup Hyprland
. "$BASE_DIR/runs/hyprland_config.sh"

#setup apps
. "$BASE_DIR/runs/paru.sh"
. "$BASE_DIR/runs/browser_zen.sh"
