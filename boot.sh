#!/bin/bash

clear

sudo pacman -Syu git --noconfirm --needed

# ------------------------
# Branch selection
# ------------------------
BRANCH=${1:-main}   # Use first argument or default to 'main'

# Clone or update repository
TARGET_DIR="$HOME/.local/share/myEnv"

if [ -d "$TARGET_DIR/.git" ]; then
    echo "Updating existing repo..."
    cd "$TARGET_DIR" || exit
    git fetch origin
    git checkout "$BRANCH"
    git pull origin "$BRANCH"
else
    echo "Cloning branch '$BRANCH'..."
    git clone --branch "$BRANCH" https://github.com/gintsperkons/env.git "$TARGET_DIR"
    cd "$TARGET_DIR" || exit
fi

# Run install script
bash $TARGET_DIR/setup.sh