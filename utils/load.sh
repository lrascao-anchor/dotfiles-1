
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
plugins=(osx ruby)

# load up oh my zsh
# source $ZSH/oh-my-zsh.sh

# load up zsh-syntax-highlighting
# source ~/utils/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# load up zsh-history-substring-search
source ~/utils/zsh-history-substring-search/zsh-history-substring-search.zsh
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# # Setup zsh-autosuggestions
# source ~/utils/zsh-autosuggestions/autosuggestions.zsh
# # Enable autosuggestions automatically
# zle-line-init() {
#     zle autosuggest-start
# }
# zle -N zle-line-init
# # use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# # zsh-autosuggestions is designed to be unobtrusive)
# bindkey '^T' autosuggest-toggle

# add kerl to path
export PATH=$PATH:~/utils/kerl
# add kerl autocompletions
fpath=(~/utils/kerl/zsh_completion $fpath)

# add zsh-users's autocompletions
fpath=(~/utils/zsh-completions/src $fpath)

# add git-flow to path
export PATH=$PATH:~/utils/gitflow
