#PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Show human friendly numbers and colors
alias df='df -h'
alias ll='ls -alGh'
alias ls='ls -Gh'
alias du='du -h -d 2'

# Rails logging
alias dlog="less log/development.log"
alias tlog="less log/test.log"

# Git
alias g="git"

# Bundler
alias be="bundle exec"
alias bi="bundle install"

# Ruby tests
alias td="testdrb -Itest"
alias tr="ruby -Itest "

# Vagrant
alias vr="vagrant restart"
alias vs="vagrant ssh"
alias vh="vagrant halt"
