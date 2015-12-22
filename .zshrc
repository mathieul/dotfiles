# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME='mathieul'

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew bundler mix)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

#
# Use newer OpenSSL
#
#LDFLAGS  -L/usr/local/Cellar/openssl/1.0.1c/lib
#CPPFLAGS -I/usr/local/Cellar/openssl/1.0.1c/include

#
# Bundler
#
alias b="bundle exec"
# alias be="bundle exec"
# alias bi="bundle install"
# alias bl="bundle list"
# alias bp="bundle package"
# alias bo="EDITOR=sub bundle open"
# alias bu="bundle update"
# export EDITOR="sub -w"
export EDITOR="vim"

#
# Spring
#
alias s="spring"

#
# Homebrew
#
brew_deps () {
  brew list | while read cask; do echo -n "\e[1;34m$cask ->\e[0m"; brew deps $cask | awk '{printf(" %s ", $0)}'; echo ""; done
}

#
# Custom aliases
#
alias rm='rm -i'
alias dev='cd ~/Documents/Development'
alias proj='cd ~/Documents/Development/Projects'
alias gem_mysql="ARCHFLAGS='-arch x86_64' gem install mysql2 -- \
  --with-mysql-dir=/usr/local/mysql --with-mysql-lib=/usr/local/mysql/lib \
  --with-mysql-include=/usr/local/mysql/include"
alias gem_update="sudo env ARCHFLAGS='-arch x86_64' gem update -- \
  --with-mysql-dir=/usr/local/mysql --with-mysql-lib=/usr/local/mysql/lib \
  --with-mysql-include=/usr/local/mysql/include"
alias install_pg_gem='env ARCHFLAGS="-arch x86_64" gem install pg'
alias start_mysql='launchctl load -w /Users/mathieu/Library/LaunchAgents/homebrew.mxcl.mysql.plist'
alias stop_mysql='launchctl unload -w /Users/mathieu/Library/LaunchAgents/homebrew.mxcl.mysql.plist'
alias ack='/usr/local/bin/ack'
alias dev_log='tail -f log/development.log | grep -e Processing -e Rendered -e Completed -e Rendering'
alias beautify='uglifyjs -b -nm -ns'
alias dir='cd dir.caring.com'
alias car='cd caring.com'
alias cnt='cd ~/Work/contact'
alias duhs='du -d2 | sort -n | cut -f2- | xargs du -sh'

#
# CDPATH
#
setopt auto_cd
cdpath=($HOME/Work)

#
# Tasking app
#
export TASKING_EMAIL_USERNAME="cloudigisafe@gmail.com"
export TASKING_EMAIL_PASSWORD="SteveJobs11"
export TASKING_DB_USERNAME="deploy"
export TASKING_DB_PASSWORD="changeme"

#
# Go
#
# export GOROOT=/usr/local/Cellar/go/1.0.3
export GOPATH=/Users/mathieu/Documents/Development/Vendor/golang
export PATH=$GOPATH/bin:$PATH

#
# Erlang / Elixir
#
#. /Users/mathieu/Documents/Erlangs/17.4/activate
# . /Users/mathieu/Documents/Erlangs/18.0/activate
#alias elixir_master="rm -f ~/elixir; ln -fs ~/Documents/Development/Vendor/elixir ~/elixir"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#
# Rbenv (.zshenv is not enough...)
#
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

#
# Heroku
#
export PATH=/usr/local/heroku/bin:$PATH

#
# Docker
#
export DOCKER_HOST=tcp://192.168.59.103:2375

#
# Zsh syntax highlighting
#
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#
# Ruby Optimization
#
# optimize GC for speed
export RUBY_GC_MALLOC_LIMIT=1000000000
# export RUBY_FREE_MIN=500000
export RUBY_GC_HEAP_FREE_SLOTS=500000
# export RUBY_HEAP_MIN_SLOTS=40000
export RUBY_GC_HEAP_INIT_SLOTS=40000

#
# custom bin path
#
# export PATH=./bin:$HOME/bin:$HOME/elixir/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH
export PATH=./bin:$HOME/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH

#
# Java
#
# export JAVA_HOME=$(/usr/libexec/java_home)

#
# Docker
#
eval "$(docker-machine env default)"

#
# Load EC2 environment
#
export EC2_HOME=/usr/local/ec2
export PATH=$EC2_HOME/bin:$PATH
. /etc/ec2_load.sh
alias east="export AWS_REGION=us-east-1; export AWS_DEFAULT_REGION=us-east-1; export EC2_URL=https://ec2.us-east-1.amazonaws.com/"
alias west="export AWS_REGION=us-west-2; export AWS_DEFAULT_REGION=us-west-2; export EC2_URL=https://ec2.us-west-2.amazonaws.com/"
