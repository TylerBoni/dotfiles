#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l1='ls -1h --color=auto --group-directories-first'
alias ls='ls --color=auto --group-directories-first'
alias la='ls -a --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# ###############
# Added by tboni
# ###############
#
export PATH=$PATH:$HOME/.local/bin
alias nst="st & disown"
