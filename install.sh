# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sfv $DOTFILES_DIR/.bash_profile ~
ln -sfv $DOTFILES_DIR/.bashrc ~
ln -sfv $DOTFILES_DIR/.git-completion.bash ~
ln -sfv $DOTFILES_DIR/.git-prompt.sh ~
ln -sfv $DOTFILES_DIR/.gitconfig ~
ln -sfv $DOTFILES_DIR/.gitexcludes ~
ln -sfv $DOTFILES_DIR/.gitignore_global ~
ln -sfv $DOTFILES_DIR/.inputrc ~