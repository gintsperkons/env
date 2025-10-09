
THIS_SCRIPT_DIR=$(dirname "$(realpath "$0")")

mkdir -p $HOME/.config/zsh
cp -r $THIS_SCRIPT_DIR/../../default/zsh/zsh/* $HOME/.config/zsh
cp $THIS_SCRIPT_DIR/../../default/zsh/.zshrc $HOME/.zshrc
