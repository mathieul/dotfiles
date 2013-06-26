# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mathieul"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew gem git github osx bundler)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

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

#
# Sublime Text 2
#
export EDITOR=sub

#
# Go
#
export GOROOT=/usr/local/Cellar/go/1.0.3
PATH=$GOROOT/bin:$PATH
export GOPATH=/Users/mathieul/Documents/Development/Go

#
# Homebrew
#
PATH=/usr/local/bin:/usr/local/sbin:$PATH

#
# NPM
#
PATH=/usr/local/share/npm/bin:$PATH

#
# Rbenv
#
PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

#
# Custom paths
#
PATH=$HOME/bin:$PATH

#
# Bundler
#
PATH=./bin:$PATH
