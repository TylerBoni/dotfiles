#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'
alias la='ls -a --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# ###############
# Added by tboni
# ###############
#
export PATH=$PATH:$HOME/.local/bin
export BG_IMAGE=$HOME/.config/i3/trees-1.jpg

alias nt="nohup alacritty > /dev/null & disown"
alias tx='tmux new-session -s $(basename $PWD)'
alias ta='tmux a -t $(basename $PWD)'
alias l1='ls -1h --color=auto --group-directories-first'
alias avim='NVIM_APPNAME=AstroNvim nvim'
alias nvchad='NVIM_APPNAME=NvChad nvim'
alias tvim='NVIM_APPNAME=tvim nvim'
alias lvim='NVIM_APPNAME=lazyvim nvim'
export GH=https://github.com


