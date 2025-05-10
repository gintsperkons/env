mkdir -p ~/.cache/ocean-sounds
wget -O ~/.cache/ocean-sounds/ocean-sounds.tar.gz https://invent.kde.org/plasma/ocean-sound-theme/-/archive/master/ocean-sound-theme-master.tar.gz
tar -xzf ~/.cache/ocean-sounds/ocean-sounds.tar.gz -C ~/.cache/ocean-sounds

sudo mkdir -p /usr/share/sounds/ocean
sudo cp ~/.cache/ocean-sounds/ocean-sound-theme-master/ocean/stereo/* /usr/share/sounds/ocean

rm -rf ~/.cache/ocean-sounds
