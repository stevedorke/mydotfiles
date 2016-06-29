# Get current dir (so run this script from anywhere)
export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

ln -sfv “$DOTFILES_DIR/.mydotfiles/.bash_profile” ~
ln -sfv “$DOTFILES_DIR/.mydotfiles/.git-completion.sh” ~
ln -sfv “$DOTFILES_DIR/.mydotfiles/.git-prompt.sh” ~
ln -sfv “$DOTFILES_DIR/.mydotfiles/.gitconfig” ~
ln -sfv “$DOTFILES_DIR/.mydotfiles/.gitexcludes” ~
ln -sfv “$DOTFILES_DIR/.mydotfiles/.gitignore_global” ~
ln -sfv “$DOTFILES_DIR/.mydotfiles/.inputrc” ~