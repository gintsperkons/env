

echo "📦 Installing Neovim..."
sudo pacman -S --noconfirm --needed neovim git curl lazygit luarocks

# Get the script's directory
SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")

pwd

# Copy the full 'eww' config folder
cp -r "$SCRIPT_DIR/../../configs/nvim" ~/.config/

pwd

