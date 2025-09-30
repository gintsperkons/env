

THIS_SCRIPT_DIR=$(dirname "$(realpath "$0")")
InstallLocation="$THIS_SCRIPT_DIR"


run_packages() {
    local dir="$1"
    local action="$2"      # "install", "config", "enable"

    for script in "$dir"/*.sh; do
        if [[ -f "$script" ]]; then
            echo "Running $action on $(basename "$script")..."
            bash "$script" "$action"
        fi
    done
}

# Example usage
PackageLocation="$InstallLocation/aur/"
echo "Installing packages from $PackageLocation"
run_packages "$PackageLocation" "install"
echo "Configuring packages from $PackageLocation"
run_packages "$PackageLocation" "config"
echo "Enabling packages from $PackageLocation"
run_packages "$PackageLocation" "enable"