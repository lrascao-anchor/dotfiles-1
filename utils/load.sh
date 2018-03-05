
# load liquidprompt
source liquidprompt/liquidprompt

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
# add git-flow's autocompletion
source ~/utils/git-flow-completion/git-flow-completion.zsh

# add auto completion
source ~/utils/zsh-autosuggestions/zsh-autosuggestions.zsh

# add zshell vim integration
source ~/utils/zsh-vimto/zsh-vimto.zsh

