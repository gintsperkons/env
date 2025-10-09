#!/bin/bash

echo "Installing WebApps"
declare -A apps
apps=(
  ["ChatGPT"]="https://chat.openai.com"
  ["Gmail"]="https://mail.google.com"
  ["YouTube"]="https://www.youtube.com"
  ["ClickUp"]="https://app.clickup.com"
  ["Twitch"]="https://www.twitch.tv"
  ["GitHub"]="https://github.com"
  ["Twitch"]="https://www.twitch.tv"
)

for name in "${!apps[@]}"; do
  url=${apps[$name]}
  $NYXTRA_STORAGE/bin/nyxtra-webapp-install "$name" "$url"
done

update-desktop-database ~/.local/share/applications
