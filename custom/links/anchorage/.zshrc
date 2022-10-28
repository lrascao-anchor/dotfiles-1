# include what you want
export TERM=xterm-256color

# configure oh-my-zsh
source ~/.oh-my-zsh.rc

# optional load time profiling
source ~/.profiling

# load all alias
source ~/.alias

# load all utils (heavy operation)
pushd ~/utils > /dev/null
	source load.sh
popd > /dev/null

# Enable zsh completion for git
# This allows git-completion to work properly
autoload -U compinit && compinit

# Enable zmv command
autoload -U zmv

export PROMPT_COMMAND="history -a;"$PROMPT_COMMAND

# GO configuration
export GOROOT="$HOME/.go/current"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"

# Rust configuration
RUST_PATH=$HOME/.cargo

# set gnu tools ahead in the path so they are used instead of the mac ones
# the following vars are an optimization, instead of calling the brew command
# which is really slow
# $(brew --prefix coreutils)
GNU_COREUTILS=/usr/local/opt/coreutils
GNU_GETOPT=/usr/local/opt/gnu-getopt
BREW_OPENSSH=/usr/local/opt/openssh
TEXINFO=/usr/local/opt/texinfo
KREW_ROOT=$HOME/.krew

# GCloud >297.0.1 needs a link to Python2
# Ref: https://github.com/google-github-actions/setup-gcloud/issues/128
export CLOUDSDK_PYTHON=/usr/bin/python2

export PATH=~/utils/bin:~/bin:~/.local/bin:/usr/local/bin:$GNU_COREUTILS/libexec/gnubin:$GNU_GETOPT/bin:$HOME/.cargo/bin:$BREW_OPENSSH/bin:$PATH:$GOBIN:$GOROOT/bin:$RUST_PATH/bin:$MONO_FRAMEWORK/bin:/opt/google-cloud-sdk/bin

# add git-cheat to path
export PATH=$PATH:`pwd`/git-cheat

# add git-machete to path
export PATH=$PATH:$HOME/.local/bin

# add istioctl to PATH
export PATH=$HOME/.istioctl/bin:$PATH

export MANPATH=$GNU_COREUTILS/libexec/gnuman:$MANPATH

# for awscli to work
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# docker client shell env vars init
#$(boot2docker shellinit)

## zsh History
HISTFILE=$HOME/.zhistory       # enable history saving on shell exit
setopt APPEND_HISTORY          # append rather than overwrite history file.
HISTSIZE=1000000000            # lines of history to maintain memory
SAVEHIST=$HISTSIZE             # lines of history to maintain in history file.
setopt HIST_EXPIRE_DUPS_FIRST  # allow dups, but expire old ones when I hit HISTSIZE
setopt EXTENDED_HISTORY        # save timestamp and runtime information
setopt no_share_history        # do not share history between terminal windows

# load up oh-my-zsh again
source $ZSH/oh-my-zsh.sh

# export NVM_DIR="/Users/luis.rascao/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR_DIR/nvm.sh"  # This loads nvm
 
# added by travis gem
[ -f /Users/luis.rascao/.travis/travis.sh ] && source /Users/luis.rascao/.travis/travis.sh

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# activate ESC trigger for zsh-vimto, this needs to be at the very end
# after everything else has been loaded
# bindkey -v

# 10ms for key sequences
KEYTIMEOUT=1

# enable kubectl zsh completion
source <(kubectl completion zsh)
complete -F __start_kubectl k

# GCloud >297.0.1 needs a link to Python2
# Ref: https://github.com/google-github-actions/setup-gcloud/issues/128
# export CLOUDSDK_PYTHON=/usr/bin/python2
export CLOUDSDK_PYTHON_SITEPACKAGES=1
export CLOUDSDK_PYTHON=/usr/local/bin/python3

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# Disable this Husky pre-commit nonsense
export HUSKY_SKIP_HOOKS=1

