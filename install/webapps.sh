#!/bin/bash

declare -A apps
apps=(
  ["ChatGPT"]="https://chat.openai.com"
  ["Gmail"]="https://mail.google.com"
  ["YouTube"]="https://www.youtube.com"
  ["ClickUp"]="https://app.clickup.com"
  ["Twitch"]="https://www.twitch.tv"
  ["GitHub"]="https://github.com"
)

for name in "${!apps[@]}"; do
  url=${apps[$name]}
  hyprarch-webapp-install "$name" "$url"
done

update-desktop-database ~/.local/share/applications
