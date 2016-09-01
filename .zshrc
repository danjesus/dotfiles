# Path to your oh-my-zsh installation.
export ZSH=/Users/danjesus/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx rake ruby lighthouse laravel5 tmux tmuxcssh postgres scala sbt git-extras brew brew-cask capistrano bower)

# User configuration

# export PATH="/Users/danjesus/google-cloud-sdk/bin:/Users/danjesus/Library/Android/sdk/platform-tools:/Users/danjesus/Library/Android/sdk/tools:/usr/local/opt/php56/bin:/Users/danjesus/.nvm/versions/node/v0.12.3/bin:/usr/local/heroku/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:/usr/local/bin:/usr/local/sbin:/Users/danjesus/.rvm/gems/ruby-head/bin:/Users/danjesus/.rvm/gems/ruby-head@global/bin:/Users/danjesus/.rvm/rubies/ruby-head/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/danjesus/.rvm/bin:/Users/danjesus/.rvm/bin:/Users/danjesus/.composer/vendor/bin:/usr/local/opt/go/libexec/bin:/Users/danjesus/gocode/bin"
export MANPATH="/usr/local/man:$MANPATH"

export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
#export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"

export PATH=${PATH}:$HOME/.composer/vendor/bin

export ANDROID_HOME=~/Library/Android/sdk
export PATH=$ANDROID_HOME/tools:${PATH}
export PATH=$ANDROID_HOME/platform-tools:${PATH}

export SCALA_HOME=/usr/local/Cellar/scala/2.11.7/libexec
export SBT_OPTS="-XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:PermSize=128M -XX:MaxPermSize=512M"

#alias deploy_serpac='rsync -avzp --progress -e "ssh" --exclude=".git" ~/serpac/ root@sistema.serpacpl.com.br:/var/www/'
#alias deploy_rsvp='rsync -avzp --progress -e "ssh" --exclude=".git" ~/rsvp/ root@rsvpcloud.com.br:/var/www/html/'
alias venva='source ~/venv/bin/activate'
alias venvd='deactivate'

LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
. $LUNCHY_DIR/lunchy-completion.zsh
fi

export SWIFTENV_ROOT=/usr/local/var/swiftenv

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source $ZSH/oh-my-zsh.sh

# my default editor
export EDITOR='vim'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias hide-files='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

export GOPATH=$HOME/go-projects
export PATH=$PATH:$GOPATH/bin
alias zipalign=~/Library/Android/sdk/build-tools/23.0.2/zipalign

