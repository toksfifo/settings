
alias ls="ls -ahlGF"
export PATH="$(brew --prefix qt)/bin:$PATH"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# echo 3
