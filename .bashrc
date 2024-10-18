#!/bin/bash
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'
alias la='ls -a --color=auto'
alias grep='grep --color=auto'

export PATH=$PATH:$HOME/.local/bin
export BG_IMAGE=$HOME/.config/i3/trees-1.jpg

# path for espressif-idf
alias activate_idf='. $HOME/.esp/esp-idf/export.sh'

alias nt="nohup alacritty > /dev/null & disown"
alias tx='tmux new-session -s $(basename $PWD)'
alias ta='tmux a -t $(basename $PWD)'
alias l1='ls -1h --color=auto --group-directories-first'
alias :q='exit'
alias cat='ccat'
alias :work='cd ~/source/repos/work/'
alias :personal='cd ~/source/repos/personal/'
# alias avim='NVIM_APPNAME=AstroNvim nvim'
# alias nvchad='NVIM_APPNAME=NvChad nvim'
# alias tvim='NVIM_APPNAME=tvim nvim'
# alias lvim='NVIM_APPNAME=lazyvim nvim'
# alias wssh='wezterm ssh && disown'
#
function wssh() {
    nohup wezterm ssh "$1" > /dev/null &
    disown && exit
}

# git aliases
alias gitu='git add -u && git status'
alias gitc='git commit -m'
alias gits='git status'
alias gitd='git diff'

PS1='\[\e[38;5;45m\]\u\[\e[38;5;208m\]@\H\[\e[0m\] \[\e[38;5;206m\]\W\[\e[0m\] \\$ '
export PS1

export GH=https://github.com

export PATH="/home/tboni/bin:/home/tboni/go/bin:$PATH"
export QT_QPA_PLATFORM=xcb

export ANDROID_HOME=$HOME/Android/sdk 
export PATH=$PATH:$ANDROID_HOME/emulator 
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/source/flutter_sdk/flutter/bin

# Commands to be executed before the prompt is displayed
# Save current working dir
alias cwd='pwd > "${HOME}/.cwd"'

# Change to saved working dir
[[ -f "${HOME}/.cwd" ]] && cd "$(< ${HOME}/.cwd)"
