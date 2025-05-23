#!/bin/bash

# Setup script: KWallet integration for Flatpak VS Code on Arch + Hyprland

set -e

echo "==> Installing required packages..."
sudo pacman -S --noconfirm kwallet kwalletmanager qt5-base flatpak --needed

echo "==> Enabling Secret Service API for KWallet..."

mkdir -p ~/.config
KWALLET_RC=~/.config/kwalletrc

if grep -q "\[Secrets\]" "$KWALLET_RC" 2>/dev/null; then
    echo "-> Updating existing kwalletrc"
    sed -i '/^\[Secrets\]/,/^\[.*\]*/ s/^Enabled=.*/Enabled=true/' "$KWALLET_RC"
else
    echo "-> Adding Secrets section to kwalletrc"
    cat <<EOF >> "$KWALLET_RC"

[Secrets]
Enabled=true
EOF
fi

echo "==> Creating startup script for kwalletd5..."

mkdir -p ~/.config/hypr/scripts
cat << 'EOF' > ~/.config/hypr/scripts/start-kwallet.sh
#!/bin/bash

# Start dbus if not running
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    export $(dbus-launch)
fi

# Start KWallet Daemon
kwalletd5 &
EOF

chmod +x ~/.config/hypr/scripts/start-kwallet.sh

echo "==> Adding to Hyprland autostart (check if already added)..."

HYPR_CONF="$HOME/.config/hypr/hyprland.conf"
if ! grep -q "start-kwallet.sh" "$HYPR_CONF"; then
    echo 'exec-once = ~/.config/hypr/scripts/start-kwallet.sh' >> "$HYPR_CONF"
    echo "-> Added exec-once line to hyprland.conf"
else
    echo "-> Startup line already exists in hyprland.conf"
fi

echo
echo "✅ Done! Now restart Hyprland or run:"
echo "  ~/.config/hypr/scripts/start-kwallet.sh"
echo
echo "To test secret access inside VS Code terminal:"
echo "  secret-tool store --label='Test' foo bar"
echo "  secret-tool lookup foo bar"

flatpak install -y org.kde.kwalletmanager5
grep -qxF "alias kwalletmanager='flatpak run org.kde.kwalletmanager5'" ~/.zshrc || echo "alias kwalletmanager='flatpak run org.kde.kwalletmanager5'" >> ~/.zshrc
