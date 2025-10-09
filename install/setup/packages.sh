set -e

PKGLIST="$NYXTRA_INSTALLER_BASE/install/setup/packages.conf"
sudo pacman -S --needed --noconfirm - < <(grep -vE '^#|^$' $PKGLIST)
