

if [ "$1" == "config" ]; then
    SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
    mkdir -p ~/.config
cp -r "$SCRIPT_DIR/../../config/hypr/"* ~/.config/hypr/
fi
