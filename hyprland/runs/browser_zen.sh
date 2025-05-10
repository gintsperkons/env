


flatpak install -y app.zen_browser.zen
grep -qxF "alias zen='flatpak run app.zen_browser.zen'" ~/.zshrc || echo "alias zen='flatpak run app.zen_browser.zen'" >> ~/.zshrc
