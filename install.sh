# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sfv $DOTFILES_DIR/.gitconfig ~
ln -sfv $DOTFILES_DIR/.gitignore_global ~





ln -sfv $DOTFILES_DIR/.zshrc ~