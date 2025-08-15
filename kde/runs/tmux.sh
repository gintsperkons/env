
sudo pacman -S tmux --needed --noconfirm

# Get the script's directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


cp "$SCRIPT_DIR/../../configs/tmux/tmux.conf" ~/.tmux.conf || echo "Conf Copy Failed"



DEV_ALIAS_CMD="alias tmuxdev='tmux new-session -d -s dev -n nvim \"nvim\"; tmux new-window -t dev:2 -n shell \"zsh\"; tmux new-window -t dev:3 -n test-shell \"zsh\"; tmux select-window -t dev:2; tmux attach -t dev'"
# Check if alias is already in ~/.zshrc, if not append it
grep -qxF "$DEV_ALIAS_CMD" ~/.zshrc || echo "$DEV_ALIAS_CMD" >> ~/.zshrc
