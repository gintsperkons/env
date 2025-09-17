  # Install build tools

  THIS_SCRIPT_DIR=$(dirname "$(realpath "$0")")

  sudo pacman -S --needed --noconfirm base-devel

  # Configure pacman
  sudo cp -f $THIS_SCRIPT_DIR/../../default/pacman/pacman.conf /etc/pacman.conf

  # Refresh all repos
  sudo pacman -Syu --noconfirm