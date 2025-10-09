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

export NYXTRA_INSTALLER_BASE="$(dirname "$(realpath "$0")")"

source $NYXTRA_INSTALLER_BASE/install/pre/env.sh


mkdir -p "$HOME/.local/share/applications"
mkdir -p "$HOME/.local/share/icons"

mkdir -p $NYXTRA_STORAGE/wallpapers
cp -r $NYXTRA_INSTALLER_BASE/wallpapers/* $NYXTRA_STORAGE/wallpapers/
mkdir -p $NYXTRA_STORAGE/bin
cp -r $NYXTRA_INSTALLER_BASE/bin/* $NYXTRA_STORAGE/bin/



bash $NYXTRA_INSTALLER_BASE/install/pre/pacman.sh
bash $NYXTRA_INSTALLER_BASE/install/pre/paru.sh

bash $NYXTRA_INSTALLER_BASE/install/setup/packages.sh
bash $NYXTRA_INSTALLER_BASE/install/setup/aur.sh
bash $NYXTRA_INSTALLER_BASE/install/setup/additional.sh
bash $NYXTRA_INSTALLER_BASE/install/setup/others.sh
bash $NYXTRA_INSTALLER_BASE/install/setup/webapps.sh


bash $NYXTRA_INSTALLER_BASE/install/post/config.sh
bash $NYXTRA_INSTALLER_BASE/install/post/startup.sh
bash $NYXTRA_INSTALLER_BASE/install/post/zsh.sh
bash $NYXTRA_INSTALLER_BASE/install/post/bash.sh

hyprctl reload
