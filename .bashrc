#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# ###############
# Added by tboni
# ###############
#
export PATH=$PATH:$HOME/.local/bin
alias nst="st & disown"
