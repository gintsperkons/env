set -e

PKGLIST="$NYXTRA_INSTALLER_BASE/install/setup/npm.conf"
sudo npm install -g  - < <(grep -vE '^#|^$' $PKGLIST)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
