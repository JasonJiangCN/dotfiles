# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"

# export UPDATE_ZSH_DAYS=13

# DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

# ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

# HIST_STAMPS="mm/dd/yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

export SSH_KEY_PATH="~/.ssh/rsa_id"

source ~/.zplug/init.zsh
export DEFAULT_USER="$(whoami)"



zplug plugins/git, from:oh-my-zsh
zplug plugins/heroku, from:oh-my-zsh
zplug plugins/pip, from:oh-my-zsh
zplug plugins/lein, from:oh-my-zsh
zplug plugins/command-not-found, from:oh-my-zsh

zplug zsh-users/zsh-completions
zplug zsh-users/zsh-syntax-highlighting

zplug themes/agnoster, from:oh-my-zsh 

zplug load

alias vi="vim"
alias tm="tmux a"
