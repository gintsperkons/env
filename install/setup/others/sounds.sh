#!/bin/bash
set -e  # exit on error






if [ ! -d "/usr/share/sounds/ocean" ]; then
  # --- Ocean Sound Pack ---
  CACHE_DIR="$HOME/.cache/ocean-sounds"
  OCEAN_DIR="/usr/share/sounds/ocean"
  OCEAN_URL="https://invent.kde.org/plasma/ocean-sound-theme/-/archive/master/ocean-sound-theme-master.tar.gz"

  mkdir -p "$CACHE_DIR"
  wget -q -O "$CACHE_DIR/ocean-sounds.tar.gz" "$OCEAN_URL"
  tar -xzf "$CACHE_DIR/ocean-sounds.tar.gz" -C "$CACHE_DIR"

  sudo mkdir -p "$OCEAN_DIR"
  sudo cp "$CACHE_DIR"/ocean-sound-theme-master/ocean/stereo/* "$OCEAN_DIR"

  rm -rf "$CACHE_DIR"

  echo "Ocean sound theme installed to $OCEAN_DIR ✅"
fi

if [ ! -d "/usr/share/sounds/enchanted" ]; then
  # --- Enchanted Sound Pack ---
  CACHE_DIR="$HOME/.cache/enchanted-sounds"
  ENCHANTED_DIR="/usr/share/sounds/enchanted"
  ENCHANTED_URL="https://github.com/rtlewis88/rtl88-Themes/archive/refs/heads/Enchanted-Complete-System-Sounds.tar.gz"

  mkdir -p "$CACHE_DIR"
  wget -q -O "$CACHE_DIR/enchanted-sounds.tar.gz" "$ENCHANTED_URL"
  tar -xzf "$CACHE_DIR/enchanted-sounds.tar.gz" -C "$CACHE_DIR"

  sudo mkdir -p "$ENCHANTED_DIR"
  # Copy the stereo folder from the extracted repo
  sudo cp "$CACHE_DIR/rtl88-Themes-Enchanted-Complete-System-Sounds/Enchanted/stereo/"* "$ENCHANTED_DIR"

  rm -rf "$CACHE_DIR"

  echo "Enchanted sound theme installed to $ENCHANTED_DIR ✅"
fi


if [ ! -d "/usr/share/sounds/smooth" ]; then
  # --- Smooth Pack ---
  CACHE_DIR="$HOME/.cache/smooth-sounds"
  SMOOTH_DIR="/usr/share/sounds/smooth"
  SMOOTH_URL="https://my.opendesktop.org/public.php/dav/files/QrcjmXiTpqQsciE"

  mkdir -p "$CACHE_DIR"
  wget -q -O "$CACHE_DIR/smooth-sounds.tar.gz" "$SMOOTH_URL"

  # Extract archive
  tar -xzf "$CACHE_DIR/smooth-sounds.tar.gz" -C "$CACHE_DIR"

  # Find all stereo folders in extracted archive and copy .oga/.ogg files
  sudo mkdir -p "$SMOOTH_DIR"
  find "$CACHE_DIR" -type d -name "stereo" | while read dir; do
      sudo cp "$dir"/* "$SMOOTH_DIR"
  done

  # Clean up
  rm -rf "$CACHE_DIR"

  echo "Smooth sound theme installed to $SMOOTH_DIR ✅"
fi
