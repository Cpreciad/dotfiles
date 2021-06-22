#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto'
alias rm='rm -i'
#
export PS1="\[\e]0;\u@\h: \w\a\]\[\033[04;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$\n> "

PATH=$HOME/scripts:$PATH
export PATH
alias dotgit="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME" 
