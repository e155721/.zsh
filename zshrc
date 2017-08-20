### zshrc ###

## Variable configuration
#
# w3m variable
#
g=google.com

# gpg valriable
#
p=pgp.nic.ad.jp

## Include dependence configuration
#
# .zsh_* file.
#
zfile=(`ls ~/.zsh_*`)
for z in $zfile
do
    source $z
done

# zprompt
#
source $ZDOTDIR/zprompt

## auto change directory
#
setopt auto_cd

## command correct edition before each completion attempt
#
setopt correct

## Emacs like key bind
#
bindkey -e

## Completion configuration
#
autoload -U compinit
compinit

## Command history configuration
#
# History data file and data size
#
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000

# ignore duplication command history list
#
setopt hist_ignore_dups

# Delete is overlap and old command data
#
setopt hist_ignore_all_dups

# share command history data
#
setopt share_history

## Alias configuration
#
# ls
#
env=`uname`
if [ $env = "Darwin" ]
then
    alias ls='ls -G'
fi

alias la='ls -a'
alias lf='ls -F'
alias ll='ls -l'

# emacsclient
#
alias cl='emacsclient'

# Git
#
alias gs='git status'
alias gi='git init'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'
alias gch='git checkout'

## Function
#
# reload
#
function reload() {
    source $ZDOTDIR/zprofile
    source $ZDOTDIR/zshrc
}
