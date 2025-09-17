# Get the script's directory
BASE_DIR=$(dirname "$(realpath "$0")")

bash $BASE_DIR/install/pre/pacman.sh

bash ${BASE_DIR}/install/package.sh