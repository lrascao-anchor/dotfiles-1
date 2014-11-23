
# load liquidprompt
source liquidprompt/liquidprompt

# add git-cheat to path
export PATH=$PATH:`pwd`/git-cheat

# Path to your oh-my-zsh installation.
export ZSH=$HOME/utils/oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"
plugins=(git osx ruby)

# load up oh my zsh
source $ZSH/oh-my-zsh.sh
