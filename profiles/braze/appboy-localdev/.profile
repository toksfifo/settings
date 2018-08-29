launchctl setenv PATH /opt/local/bin:/opt/local/sbin:/usr/local/sbin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/toksfifo/bin:/Users/toksfifo/.rvm/bin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# From new localdev setup.
export RBENV_VERSION=2.2.4

# From old .bash_profile. Seems to make `bundle` work.
export DOCKER=true
eval "$(rbenv init -)"

dashboard() {
  platform-dashboard
}

console() {
  platform-dashboard-console
}

cd-ald() {
  cd ~/Documents/apps/appboy-localdev/shared/platform/dashboard/
}
