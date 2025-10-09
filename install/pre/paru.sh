    if command -v paru >/dev/null 2>&1; then
      echo "Paru Is Installed"
    else
      set -e
      sudo pacman -S --needed --noconfirm base-devel git
      cd /tmp && git clone https://aur.archlinux.org/paru.git
      cd paru
      makepkg -si --noconfirm
      cd ~ && rm -rf /tmp/paru
    fi
    
    paru -Syu --noconfirm
