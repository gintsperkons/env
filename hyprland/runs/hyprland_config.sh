

mkdir -p ~/.config/hypr

# Get the script's directory
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Copy the file or directory (relative to script's directory)
cp -r "$SCRIPT_DIR/../config/hypr" ~/.config
