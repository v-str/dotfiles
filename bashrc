#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls --color=auto -la'

export PS1="\e[0;36m[\u\e[m@\h \W]\$ "
#for root 0;31 (RED color name)
export PS1="\e[0;36m[\u\e[m@\h \W]\$ "
export EDITOR=/bin/vim

# Keyboard layout RUS/ENG
setxkbmap -model pc105 -layout us,ru -option grp:alt_shift_toggle

# ranger quit in current directory
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

alias grep='grep --color=always'
