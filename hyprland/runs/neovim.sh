set -e

echo "📦 Installing Neovim..."
sudo pacman -S --noconfirm --needed neovim git curl lazygit

# Get the script's directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Copy the full 'eww' config folder
cp -r "$SCRIPT_DIR/../config/nvim" ~/.config/
