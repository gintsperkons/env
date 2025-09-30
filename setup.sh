ART=$(cat <<'EOF'
███╗   ██╗██╗   ██╗██╗  ██╗████████╗██████╗  █████╗ 
████╗  ██║ ██╗ ██╔╝ ██╗██╔╝   ██╔══╝██╔══██╗██╔══██╗
█████╗ ██║  ████╔╝   ███╔╝    ██║   ██████╔╝███████║
██║ ██╗██║   ██╔╝   ██║██╗    ██║   ██╔══██╗██╔══██║
██║  ████║   ██║   ██╔╝ ██╗   ██║   ██║  ██║██║  ██║
╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝
EOF
)

clear
echo ""
echo "$ART"
echo ""

# Get the script's directory
BASE_DIR=$(dirname "$(realpath "$0")")


mkdir -p $HOME/.local/share/nyxtra/wallpapers
cp -r $BASE_DIR/wallpapers/* $HOME/.local/share/nyxtra/wallpapers/
mkdir -p $HOME/.local/share/nyxtra/bin
cp -r $BASE_DIR/bin/* $HOME/.local/share/nyxtra/bin/



source $BASE_DIR/install/pre/env.sh

bash $BASE_DIR/install/pre/pacman.sh

bash $BASE_DIR/install/package.sh
bash $BASE_DIR/install/aur.sh
bash $BASE_DIR/install/webapps.sh
bash $BASE_DIR/install/others.sh


bash $BASE_DIR/install/post/zsh.sh

hyprctl reload