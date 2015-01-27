
# clone liquid prompt
git clone --quiet git@github.com:nojhan/liquidprompt.git utils/liquidprompt

# clone gitcheat
git clone --quiet git@github.com:0xAX/git-cheat.git utils/git-cheat

# oh my zsh
git clone --quiet git://github.com/robbyrussell/oh-my-zsh.git utils/oh-my-zsh

# zsh-syntax-highlighting
git clone --quiet git@github.com:zsh-users/zsh-syntax-highlighting.git

# zsh-history-substring-search
git clone --quiet git://github.com/zsh-users/zsh-history-substring-search.git

# zsh autosugestions
git clone --quiet git://github.com/tarruda/zsh-autosuggestions

# Easy building and installing of Erlang/OTP instances
git clone --quiet git://github.com/yrashk/kerl.git

# Additional completion definitions for Zsh
git clone --quiet git://github.com/zsh-users/zsh-completions.git

# https://unbalancedparentheses.github.io/gut/
wget https://github.com/unbalancedparentheses/gut/raw/master/bin/gut
chmod +x ./gut
sudo mv ./gut ~/bin

# git flow
git clone --quiet git://github.com/nvie/gitflow.git
