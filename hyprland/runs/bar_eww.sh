#!/bin/bash
set -e

# Function to install Eww
install_eww() {
  echo "🔧 Installing required packages..."
  sudo pacman -S --needed \
    git base-devel rust cargo \
    gtk3 glib2 cairo pango gdk-pixbuf2 pkgconf

  # Remove old clone if it exists
  if [ -d "eww" ]; then
    echo "📁 Removing existing 'eww' directory..."
    rm -rf eww
  fi

  echo "⬇️ Cloning Eww from GitHub..."
  git clone https://github.com/elkowar/eww
  cd eww
  echo "🛠 Building Eww..."
  cargo build --release --no-default-features --features=wayland
  echo "📦 Installing Eww to /usr/local/bin..."
  sudo install -Dm755 target/release/eww /usr/local/bin/eww
  cd ..
}

# Check if Eww is installed
if ! command -v eww &> /dev/null; then
  echo "❌ Eww is not installed, proceeding with installation..."
  install_eww
else
  # If the argument is "reinstall", remove Eww and reinstall
  if [ "$1" == "reinstall" ]; then
    echo "🔄 Reinstalling Eww..."
    sudo rm -f /usr/local/bin/eww
    rm -rf ~/.config/eww
    install_eww
  else
    echo "✅ Eww is already installed."
  fi
fi



# Get the script's directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Copy the full 'eww' config folder
cp -r "$SCRIPT_DIR/../config/eww" ~/.config/

