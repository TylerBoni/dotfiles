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
export WOKWI_CLI_TOKEN=$(cat $HOME/.wokwi/.token)
export PATH=$PATH:$HOME/.local/bin
export BG_IMAGE=$HOME/.config/i3/trees-1.jpg

# path for espressif-idf
alias activate_idf='. $HOME/.esp/esp-idf/export.sh'

alias nt="nohup alacritty > /dev/null & disown"
alias tx='tmux new-session -s $(basename $PWD)'
alias ta='tmux a -t $(basename $PWD)'
alias l1='ls -1h --color=auto --group-directories-first'
# alias avim='NVIM_APPNAME=AstroNvim nvim'
# alias nvchad='NVIM_APPNAME=NvChad nvim'
# alias tvim='NVIM_APPNAME=tvim nvim'
# alias lvim='NVIM_APPNAME=lazyvim nvim'
# alias wssh='wezterm ssh && disown'
function wssh() {
    nohup wezterm ssh $1 > /dev/null &
    disown && sleep 2 && exit
}

# git aliases
alias gitu='git add -u && git status'
alias gitc='git commit -m'
alias gits='git status'
alias gitd='git diff'

# add newlines before bash prompt
dashed_ps1='\n\[$(printf "%*s" $(($(tput cols)-11)) "" | sed "s/ /-/g") \t\r\u@\h:\w\]\n\n\W\$ '
regular_ps1='\u@\h:\w\$ '

export PS1=$regular_ps1

function setps1() {
    if [ "$1" == "dashed" ]; then
        export PS1=$dashed_ps1
    else
        export PS1=$regular_ps1
    fi
}

export GH=https://github.com


export PATH="/home/tboni/bin:$PATH"
