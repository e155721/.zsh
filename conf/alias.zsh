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
