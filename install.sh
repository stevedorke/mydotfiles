# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Close any open System Preferences panes, to prevent them from overriding settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until setup has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor

#brew installs
PACKAGES=(
	ack
	ccat
	coreutils
	docker
	docker-compose
	docker-machine
	findutils
	git
	node
	nvm
	thefuck
	tldr
	trash
	tree
	wget
	yarn
	zsh
)
echo "Installing packages..."
brew install ${PACKAGES[@]}

#brew cask
brew tap homebrew/cask
CASKS=(
	adapter
	adguard
	alfred
	android-file-transfer
	appcleaner
	caffeine
	discord
	docker
	dropbox
	flux
	freedom
	gas-mask
	google-chrome
	google-drive
	handbrake
	insomnia
	iterm2
	lastpass
	monitorcontrol
	signal
	slack
	spectacle
	spotify
	sublime-merge
	the-unarchiver
	transmission
	tunnelblick
	visual-studio-code
	virtualbox
	vlc
)

echo "Installing cask apps..."
brew install ${CASKS[@]}

#brew fonts
brew tap homebrew/cask-fonts
brew install font-source-code-pro-for-powerline
echo "Installing fonts..."

echo "Cleaning up..."
brew cleanup

#install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install powerlevel 10k theme
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

#remove terminal 'last login' messages
touch ~/.hushlogin

# symlink git config
ln -sfv $DOTFILES_DIR/.gitconfig ~
ln -sfv $DOTFILES_DIR/.gitignore_global ~

git config --global core.excludesfile ~/.gitignore_global

# symlink zsh/p10k config
ln -sfv $DOTFILES_DIR/.zshrc ~
ln -sfv $DOTFILES_DIR/.p10k.zsh ~

# zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

echo "Done. Note that some of these changes require a logout/restart to take effect."