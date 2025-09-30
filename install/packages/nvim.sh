if [ "$1" == "install" ]; then
    sudo pacman -S --noconfirm --needed neovim git curl lazygit luarocks ruff nodejs npm

    sudo npm install -g   typescript   typescript-language-server   prettier   eslint   eslint_d   stylelint   htmlhint   vscode-langservers-extracted

fi


if [ "$1" == "config" ]; then
    SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
    mkdir -p ~/.config
cp -r "$SCRIPT_DIR/../../config/nvim/"* ~/.config/nvim/
fi
