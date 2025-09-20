# Get the script's directory
BASE_DIR=$(dirname "$(realpath "$0")")


cp -r $BASE_DIR/bin $HOME/.local/share/hyprarch
cp -r $BASE_DIR/wallpapers $HOME/.local/share/hyprarch


bash $BASE_DIR/install/pre/pacman.sh

bash ${BASE_DIR}/install/package.sh