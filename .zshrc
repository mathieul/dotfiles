# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mathieul"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew gem git github osx)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

#
# Bundler
#
alias b="bundle exec"
alias bo="EDITOR=sub bundle open"
EDITOR=sub

#
# Custom aliases
#
alias rm='rm -i'
alias dev='cd ~/Documents/Development'
alias proj='cd ~/Documents/Development/Projects'
alias gem_update="sudo env ARCHFLAGS='-arch x86_64' gem update -- \
  --with-mysql-dir=/usr/local/mysql --with-mysql-lib=/usr/local/mysql/lib \
  --with-mysql-include=/usr/local/mysql/include"
alias intall_pg='env ARCHFLAGS="-arch x86_64" gem install pg'
alias start_mysql='sudo launchctl load -w /Library/LaunchDaemons/com.mysql.mysqld.plist'
alias stop_mysql='sudo launchctl unload -w /Library/LaunchDaemons/com.mysql.mysqld.plist'
alias start_mongodb='launchctl load -w /usr/local/Cellar/mongodb/1.6.0-x86_64/org.mongodb.mongod.plist'
alias stop_mongodb='launchctl unload -w /usr/local/Cellar/mongodb/1.6.0-x86_64/org.mongodb.mongod.plist'
alias ack='/usr/local/bin/ack'

#
# Rbenv
#
PATH=/usr/local/bin:/usr/local/sbin:$PATH
eval "$(rbenv init -)"

#
# Bundler
#
PATH=./bin:$PATH

#
# Custom paths
#
PATH=$HOME/bin:$PATH