bind "set completion-ignore-case on"

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export arcadia_SERVER=localhost:21000

PS1="\u:\w$ "

source ~/Documents/apps/appboy-localdev/.profile
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
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

#git autocomplete
# git autocompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Braze Console Shortcuts
ssh-staging() {
  ssh -t toks@dashboard-001.staging-east-1.appboy.com "/bin/bash --login -c 'sudo -iH -u platform /opt/platform/bin/platform-dashboard-console'"
}

ssh-01() {
  ssh -t toks@dashboard-004.production-east-1.appboy.com "/bin/bash --login -c 'sudo -iH -u platform /opt/platform/bin/platform-dashboard-console'"
}

ssh-02() {
  ssh -t toks@dashboard-001.production-02-east-1.appboy.com "/bin/bash --login -c 'sudo -iH -u platform /opt/platform/bin/platform-dashboard-console'"
}

ssh-03() {
  ssh -t toks@dashboard-a-001.production-03-east-1.appboy.com "/bin/bash --login -c 'sudo -iH -u platform /opt/platform/bin/platform-dashboard-console'"
}

ssh-04() {
  ssh -t toks@dashboard-a-001.production-04-east-1.appboy.com "/bin/bash --login -c 'sudo -iH -u platform /opt/platform/bin/platform-dashboard-console'"
}

ssh-eu() {
  ssh -t toks@dashboard-002.production-euc-1.appboy.eu "/bin/bash --login -c 'sudo -iH -u platform /opt/platform/bin/platform-dashboard-console'"
}

ssh-nfi() {
  ssh -t toks@env-006.staging-east-1.appboy.com
}

rspec() {
  bundle exec rspec $1
}

dashboard() {
  platform-dashboard
}

console() {
  platform-dashboard-console
}

cd-dashboard() {
  cd ~/Documents/apps/appboy-localdev/shared/platform/dashboard/
}

rspec-nfi-dashboard() {
  bundle exec rspec /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/dashboard/spec/controllers/controller_actions/apps/analytics_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/dashboard/spec/lib/jobs/appboy/communication/marketing/content_cards_dispatcher_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/dashboard/spec/models/appboy/communication/marketing/content_cards_action_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/dashboard/spec/models/appboy/communication/marketing/content_cards_message_variation_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/analytics/buffers/content_cards_daily_stat_buffer_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/analytics/campaign_analytics_provider_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/analytics/campaign_daily_stat_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/analytics/daily_stat_analytics_provider_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/analytics/message_send_analytics_provider_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/analytics/message_send_instance_daily_stat_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/analytics/payload_tracking_info_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/content_cards/card_factory_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/content_cards/card_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/content_cards/content_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/content_cards/provider_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/hash_generator_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/postgres/format_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/util/coerce_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/jobs/appboy/communication/marketing/message_partial_enqueuer_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/models/app_group_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/models/appboy/analytics/content_cards_daily_stat_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/models/appboy/analytics/push_daily_stat_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/models/appboy/communication/segment/campaign_retarget_filter_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/models/appboy/communication/segment/mongo_filter_assessor_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/models/appboy/communication/segment/workflow_step_retarget_filter_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/models/tracked_user_behavior/interacted_with_campaign_spec.rb
}

rspec-nfi-api() {
  bundle exec rspec /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/api/spec/integration/appboy/api/v3/content_cards_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/api/spec/lib/appboy/api/v3/content_cards/sdk_payload_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/api/spec/lib/appboy/api/service_loader_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/api/spec/lib/appboy/api/v3/content_cards/request_parser_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/api/spec/lib/appboy/api/v3/content_cards/request_validator_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/api/spec/lib/appboy/api/v3/content_cards/sync_manager_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/api/v2/content_cards_interaction_event_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/api/v2/internal_event_logger_spec.rb /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/shared_code/spec/shared/lib/appboy/api/v2/sdk_event_processor_spec.rb
}

nfi-copy-file() {
  git checkout nfi /Users/toksfifo/Documents/apps/appboy-localdev/shared/platform/$1
}

# From old .bash_profile. Seems to make `bundle` work.
export DOCKER=true; eval "$(rbenv init -)"

# Fuzzy
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
