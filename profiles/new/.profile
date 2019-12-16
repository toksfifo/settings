# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Don't show "Last login..." info. Will work on next restart.
touch ~/.hushlogin

# Don't show "The default" interactive shell is now zsh..." message
export BASH_SILENCE_DEPRECATION_WARNING=1
