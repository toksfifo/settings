bind "set completion-ignore-case on"

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export arcadia_SERVER=localhost:21000

PS1="\u:\w$ "

source ~/Documents/apps/appboy-localdev/.profile
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#
[ -f ~/.git-flow-completion.sh ] && . ~/.git-flow-completion.sh
launchctl setenv PATH /opt/local/bin:/opt/local/sbin:/usr/local/sbin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/toksfifo/bin:/Users/toksfifo/.rvm/bin
export CC=gcc

# export RBENV_VERSION=${PLATFORM_RUBY_VERSION}; export DOCKER=true; eval "$(rbenv init -)"

# terminal colors
colorflag="-G"
alias ls="command ls ${colorflag}"
alias l="ls -lF ${colorflag}" # all files, in long format
alias la="ls -laF ${colorflag}" # all files inc dotfiles, in long format
alias lsd='ls -lF ${colorflag} | grep "^d"' # only directories
### Prompt Colors
# Modified version of @gf3’s Bash Prompt
# (https://github.com/gf3/dotfiles)
if  $COLORTERM = gnome-* && $TERM = xterm  && infocmp gnome-256color >/dev/null 2>&1; then
        export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
        export TERM=xterm-256color
fi
if tput setaf 1 &> /dev/null; then
        tput sgr0
        if  $(tput colors) -ge 256  2>/dev/null; then
                BLACK=$(tput setaf 190)
                MAGENTA=$(tput setaf 9)
                ORANGE=$(tput setaf 172)
                GREEN=$(tput setaf 190)
                PURPLE=$(tput setaf 141)
                WHITE=$(tput setaf 0)
        else
                BLACK=$(tput setaf 190)
                MAGENTA=$(tput setaf 5)
                ORANGE=$(tput setaf 4)
                GREEN=$(tput setaf 2)
                PURPLE=$(tput setaf 1)
                WHITE=$(tput setaf 7)
        fi
        BOLD=$(tput bold)
        RESET=$(tput sgr0)
else
        BLACK="\033[01;30m"
        MAGENTA="\033[1;31m"
        ORANGE="\033[1;33m"
        GREEN="\033[1;32m"
        PURPLE="\033[1;35m"
        WHITE="\033[1;37m"
        BOLD=""
        RESET="\033[m"
fi
export BLACK
export MAGENTA
export ORANGE
export GREEN
export PURPLE
export WHITE
export BOLD
export RESET
# Git branch details
function parse_git_dirty() {
        [[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
}
function parse_git_branch() {
        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}
# Change this symbol to something sweet.
# (http://en.wikipedia.org/wiki/Unicode_symbols)
symbol="♦"
export PS1="\[${BOLD}${MAGENTA}\]\u \[$WHITE\]in \[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n$symbol\[$RESET\]"
export PS2="\[$ORANGE\]→ \[$RESET\]"
# Case Insensitive Bash Tab Completion
bind "set completion-ignore-case on"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH