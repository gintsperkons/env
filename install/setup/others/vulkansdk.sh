#!/usr/bin/env bash
set -e

mkdir -p "$HOME/.local/share/tools/vulkan"
mkdir -p "$HOME/.temp"

if [ ! -d "$HOME/.local/share/tools/vulkan" ]; then
  echo "Downloading Vulkan SDK..."
  wget --progress=bar:force:noscroll -O "$HOME/.temp/vulkan-sdk.tar.xz" \
    https://sdk.lunarg.com/sdk/download/1.4.321.1/linux/vulkansdk-linux-x86_64-1.4.321.1.tar.xz

  echo "Extracting Vulkan SDK..."
  # If pv is installed, show progress; otherwise, extract normally
  if command -v pv >/dev/null 2>&1; then
    pv "$HOME/.temp/vulkan-sdk.tar.xz" | tar -xJf - -C "$HOME/.local/share/tools/vulkan" 
  else
    tar -xJvf "$HOME/.temp/vulkan-sdk.tar.xz" -C "$HOME/.local/share/tools/vulkan" 
  fi

  echo "Vulkan SDK installed to $HOME/.local/share/tools/vulkan ✅"
fi
