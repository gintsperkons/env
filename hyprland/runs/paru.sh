sudo pacman -S base-devel git --needed --noconfirm

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru
