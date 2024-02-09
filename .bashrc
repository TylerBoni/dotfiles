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

alias nt="alacritty & disown"
alias l1='ls -1h --color=auto --group-directories-first'
alias astronvim='NVIM_APPNAME=AstroNvim nvim'
alias nvchad='NVIM_APPNAME=NvChad nvim'


