
# clone liquid prompt
git clone --quiet https://github.com/nojhan/liquidprompt.git utils/liquidprompt

# clone gitcheat
git clone --quiet https://github.com/0xAX/git-cheat.git utils/git-cheat

# oh my zsh
git clone --quiet https://github.com/robbyrussell/oh-my-zsh.git utils/oh-my-zsh

# zsh-syntax-highlighting
git clone --quiet https://github.com/zsh-users/zsh-syntax-highlighting.git utils/zsh-syntax-highlighting

# zsh-history-substring-search
git clone --quiet https://github.com/zsh-users/zsh-history-substring-search.git utils/zsh-history-substring-search

# zsh autosugestions
git clone --quiet https://github.com/tarruda/zsh-autosuggestions utils/zsh-autosuggestions

# Easy building and installing of Erlang/OTP instances
git clone --quiet https://github.com/yrashk/kerl.git utils/kerl

# Additional completion definitions for Zsh
git clone --quiet https://github.com/zsh-users/zsh-completions.git utils/zsh-completions

# git flow
git clone --quiet https://github.com/petervanderdoes/gitflow.git utils/gitflow
# git flow completion
git clone --quiet https://github.com/bobthecow/git-flow-completion utils/git-flow-completion

# zshell vim plugin
git clone https://github.com/laurenkt/zsh-vimto.git utils/zsh-vimto

# git machete cli completion
mkdir -p utils/oh-my-zsh/custom/plugins/git-machete/
curl -L https://raw.githubusercontent.com/VirtusLab/git-machete/master/completion/git-machete.completion.zsh -o utils/oh-my-zsh/custom/plugins/git-machete/git-machete.plugin.zsh
