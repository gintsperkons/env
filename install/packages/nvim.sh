

sudo pacman -S --noconfirm --needed neovim git curl lazygit luarocks ruff nodejs npm


npm install -g   typescript   typescript-language-server   prettier   eslint   eslint_d   stylelint   htmlhint   vscode-langservers-extracted   


# Get the script's directory
SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")

pwd

# Copy the full 'eww' config folder
cp -r "$SCRIPT_DIR/../../config/nvim" ~/.config/

pwd

