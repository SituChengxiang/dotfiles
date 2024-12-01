#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

go env -w GO111MODULE=on
go env -w  GOPROXY=https://goproxy.io,direct

[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

export LC_ALL=C

export GPG_TTY=$(tty)
