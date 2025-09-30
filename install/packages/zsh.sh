if [ "$1" == "install" ]; then
    sudo pacman -S zsh --needed --noconfirm
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi