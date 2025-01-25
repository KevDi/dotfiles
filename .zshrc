# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(vscode common-aliases dnf dircycle docker mvn dirhistory encode64 python sudo systemd web-search git zsh-autosuggestions ssh-agent)

# User configuration
apt_pref='apt'
apt_upgr='full-upgrade'
export EDITOR="vim"
export PAGER="less"
export MOVPLAY="vlc"
export PICVIEW="feh"
export TERMINAL="urxvt"
export PATH=$HOME/.bin:$HOME/.local/bin:/usr/local/bin:/usr/local/go/bin:$HOME/go/bin:$PATH
source $ZSH/oh-my-zsh.sh

for ext in html org php com net no de; do alias -s $ext=$BROWSER; done
for ext in txt tex PKGBUILD; do alias -s $ext=$EDITOR; done
for ext in png jpg gif; do alias -s $ext=$PICVIEW; done
for ext in mpg wmv avi mkv; do alias -s $ext=$MOVPLAY; done

## System

alias keys='xev'
alias unblock-wireless='rfkill unblock all && ifconfig set wlp9s0 up'
alias toggle-wifi='sudo ifconfig wlp9s0 down && sudo ifconfig wlp9s0 up'

alias df="df -h"

#Configs
alias Config='cd ~/.config'

#Fonts
alias Fonts='fc-cache -vf ~/.fonts'
alias font-check='echo "\ue0b0 \u00b1 \ue0a0 \u2718 \u26a1 \u2699"'

#ssh
alias mountNFS='sudo mount 172.16.16.24:/srv/data /mnt'
alias umountNFS='sudo umount /mnt'

## Packages

alias gz='tar -xzvf'
alias xz='tar -xJvf'
alias bz='tar -xvjf'
alias bz2='tar -jxvf'

## Directories
alias C='clear'
alias se='sudo vim'
alias e='vim'
alias k='exit'
alias lsTrash='ls ~/.local/share/Trash/files/'
alias cdTrash='cd ~/.local/share/Trash/files/'
alias D='cd ~/Downloads'
alias lD='ls ~/Downloads'

## zsh
alias eZ='vim ~/.zshrc'
alias Z='source ~/.zshrc'

## vim
alias eV='vim ~/.vimrc'

##i3
alias eI='vim ~/.config/i3/config'

## polybar
alias eP='vim ~/.config/polybar/config'

## Scripts
alias activate='chmod 755'
alias dc='docker-compose'
alias python='python3'
## Functions
eval $(dircolors ~/.dircolors)
