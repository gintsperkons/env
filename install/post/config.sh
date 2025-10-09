

copy_config() {
  local config="$1"
  echo "Copying $1 configurations"
  cp -r "$NYXTRA_INSTALLER_BASE/config/$config/"* ~/.config/$config
}

copy_config swaync
copy_config hypr
copy_config waybar
copy_config rofi
copy_config nvim
