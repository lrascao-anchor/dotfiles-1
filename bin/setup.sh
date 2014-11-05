# load up setup data
. setup_data

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install brew cask
brew install caskroom/cask/brew-cask
# If you want to install beta versions of things like Chrome Canary or
# Sublime Text 3, you'll need to tap the versions cask:
brew tap caskroom/versions
# Cask can also be used to automatically download and install fonts.
# In order to enable this, you'll need to tap the fonts cask:
brew tap caskroom/fonts

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew tap homebrew/versions

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
# Install Bash 4
brew install bash
brew install binutils
brew install diffutils
brew install ed --default-names
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils --default-names
brew install gawk
brew install gnu-indent --default-names
brew install gnu-sed --default-names
brew install gnu-tar --default-names
brew install gnu-which --default-names
brew install gnutls --default-names
brew install grep --default-names
brew install gzip
brew install screen
brew install watch
brew install wdiff --with-gettext
brew install wget
brew install gpatch
brew install m4
brew install make
brew install git
brew install less

# Update homebrew recipes
brew update

echo "installing binaries..."
brew install ${binaries[@]}

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

brew cleanup
brew linkapps

# Mackup is a community-driven tool for backing up and restoring
# system and application settings. You can find the list of
# applications it supports in the lra/mackup repo.
pip install mackup

# https://gist.github.com/brandonb927/3195465
# osx for hackers
echo "Show dotfiles in Finder by default."
defaults write com.apple.finder AppleShowAllFiles TRUE
echo "Showing all filename extensions in Finder by default"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
echo "Use column view in all Finder windows by default"
defaults write com.apple.finder FXPreferredViewStyle Clmv
echo "Disabling the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
echo "Avoiding the creation of .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
echo "Disabling press-and-hold for special keys in favor of key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
echo "Setting a blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 0

# git setup
. git_setup.sh
