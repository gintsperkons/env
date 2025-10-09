
#network
sudo systemctl enable --now NetworkManager
#bluetooth
sudo systemctl enable --now bluetooth.service
#audio
systemctl --user enable --now pipewire.service pipewire.socket wireplumber.service pipewire-pulse.service 
