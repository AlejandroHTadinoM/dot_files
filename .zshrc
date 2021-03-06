# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=/home/alejandrohtm/.oh-my-zsh

# Set VI keys mode:
# set -o vi

# Set 256 Colors:
export TERM="xterm-256color"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Powerlevel9k config:
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%F{white}"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%F{blue}\u2570\uf460%F{white} "
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %d.%m.%y}"
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='blue'
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%F{white}"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%F{blue}\u2570\uf460%F{white}"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('ssh' 'dir_writable' 'dir' 'vcs')
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('virtualenv' 'load' 'ram_joined' 'battery')
HIST_STAMPS="mm/dd/yyyy"
DISABLE_UPDATE_PROMPT=true

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=( git django artisan zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Export gems env
export GEM_HOME="$(ruby -rubygems -e 'puts Gem.user_dir')"
export GEM_PATH="$(ruby -rubygems -e 'puts Gem.user_dir')"

# Ruby GEMS PATH
if ((which ruby > /dev/null) && (which gem > /dev/null)); then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin/:$PATH"
fi

# NodeJS PATH.
if ((which npm > /dev/null) && (which node > /dev/null)); then
    PATH="/home/alejandrohtm/.npm-global/bin/:$PATH"
fi

# Set Go vars:
export GOPATH="$HOME/.go"
export LGOPATH="$HOME/.go"

# Go Lang Path:
if (which go > /dev/null); then
    PATH="$GOPATH/bin:$PATH"
fi

# Include local BIN:
PATH="$HOME/.local/bin/:$PATH"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# UPDATE_ZSH_DAYSers are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Config alias:
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias source-load="source ~/.zshrc"

# Media:
alias music="ncmpcpp"

# Email:
alias email="mutt"

# Package manager:
alias update="_ apt update"
alias upgrade="_ apt upgrade"
alias install="_ apt install"
alias upgrade-all="_ apt update && _ apt upgrade"
alias upgrade-fix="_ apt upgrade --fix-missing --fix-broken"

# Sysadmin:
alias ctl-start="_ systemctl start"
alias ctl-restart="_ systemctl restart"
alias ctl-stop="_ systemctl stop"
alias ctl-status="systemctl status"

# Directory navigation:
alias gotoProjects="cd ~/Workspace/Projects/"
alias gotoBuild="cd ~/Workspace/Build/"
alias gotoSource="cd ~/Workspace/Sources/"
alias gotoTesting="cd ~/Workspace/Testing/"
alias ls="colorls"
alias la="colorls -lA --sd"

# Django:
alias django-py3="python3 manage.py"
alias django-py2="pyhton manage.py"

# PHP Artisan:
alias artisan="php artisan"

# Youtube Downloader:
alias ytdl-audio="youtube-dl -i -o '%(title)s.%(ext)s' -x -f bestaudio"
alias ytdl-video="youtube-dl -i -o '%(title)s.%(ext)s' -f webm"
alias ytdl-x="youtube-dl -i -o '%(title)s.%(ext)s'"

# Transmission daemon
alias t-start='sudo service transmission-daemon start'
alias t-stop='sudo service transmission-daemon stop'
alias t-reload='sudo service transmission-daemon reload'
alias t-list='transmission-remote -n 'transmission:transmission' -l'
alias t-basicstats='transmission-remote -n 'transmission:transmission' -st'
alias t-fullstats='transmission-remote -n 'transmission:transmission' -si'

