THIS_SCRIPT_DIR=$(dirname "$(realpath "$0")")
InstallLocation="$THIS_SCRIPT_DIR"

bash "$InstallLocation/flatpaks/zen.sh"
bash "$InstallLocation/flatpaks/spotify.sh"
bash "$InstallLocation/flatpaks/vscode.sh"