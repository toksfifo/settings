
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##
# Your previous /Users/toksfifo/.bash_profile file was backed up as /Users/toksfifo/.bash_profile.macports-saved_2015-12-09_at_11:12:21
##

# MacPorts Installer addition on 2015-12-09_at_11:12:21: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# git autocompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#android SDK use Gradle
android_root=/Users/toksfifo/android-sdk-macosx
export PATH=${android_root}/tools:$PATH
export PATH=${android_root}/platform-tools:$PATH
export ANDROID_HOME=${android_root}
export ANDROID_SDK=${android_root}
launchctl setenv ANDROID_HOME "/Users/toksfifo/android-sdk-macosx"

GRADLE_OPTS=-Xmx512m

export HOMEBREW_GITHUB_API_TOKEN='96fec329e44ce7a85cf0262a7273197afd17eb6e'
export DOCKER=true; eval "$(rbenv init -)"

PATH=/usr/local/pgsql/bin:$PATH
export PATHexport PATH="/usr/local/opt/qt@5.5/bin:$PATH"
