
#case-insensitive autocomplete
bind "set completion-ignore-case on"

#add some color
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#better prompt
PS1="\u:\w$ "
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

source ~/Documents/apps/appboy-localdev/.profile
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
export RBENV_VERSION=${PLATFORM_RUBY_VERSION}; export DOCKER=true; eval "$(rbenv init -)"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=$PATH:/Users/toksfifo/Desktop/
export PATH

# echo .bash_profile_start
# echo $PATH
# export PATH=/usr/local/opt/qt@5.5/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/toksfifo/Desktop/
# echo .bash_profile_end

PATH=$PATH:/Users/toksfifo/Desktop/
export PATH
