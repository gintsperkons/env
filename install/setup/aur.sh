set -e

PKGLIST="$NYXTRA_INSTALLER_BASE/install/setup/aur.conf"
paru -S --needed --noconfirm - < <(grep -vE '^#|^$' $PKGLIST)
