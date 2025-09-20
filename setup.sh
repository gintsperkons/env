# Get the script's directory
BASE_DIR=$(dirname "$(realpath "$0")")


mkdir -p $HOME/.local/share/hyprarch/wallpapers
cp -r $BASE_DIR/wallpapers/* $HOME/.local/share/hyprarch/wallpapers/
mkdir -p $HOME/.local/share/hyprarch/bin
cp -r $BASE_DIR/bin/* $HOME/.local/share/hyprarch/bin/



source $BASE_DIR/install/pre/env.sh

bash $BASE_DIR/install/pre/pacman.sh

bash $BASE_DIR/install/package.sh
bash $BASE_DIR/install/flatpaks.sh

bash $BASE_DIR/install/webapps.sh

cp -r $BASE_DIR/config/* $HOME/.config/

bash $BASE_DIR/install/post/zsh.sh