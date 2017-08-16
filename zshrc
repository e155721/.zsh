### zshrc ###

## Environment variable
#
env=`uname`

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
zfile=(`ls ~/.zsh_*`)
for z in $zfile
do
    source $z
done

## auto change directory
#
setopt auto_cd

## command correct edition before each completion attempt
#
setopt correct

## Emacs like key bind
#
bindkey -e

## PROMPT configuration
#
# Default PROMPT configuration
#
autoload -U colors && colors
autoload -Uz add-zsh-hook
function branch_name() {
    if [ -e .git ]
    then
        branch=`git branch | grep \*`
        PROMPT="%{$fg_bold[magenta]%}%B%n%b%{$fg[magenta]%}@%m %{$fg_bold[cyan]%}%B[%~]%b (${branch}) %{$fg[green]%}
%(!.#.💕 ) %"
    else
        PROMPT="%{$fg_bold[magenta]%}%B%n%b%{$fg[magenta]%}@%m %{$fg_bold[cyan]%}%B[%~]%b %{$fg[green]%}
%(!.#.💕 ) %"
    fi
}
add-zsh-hook precmd branch_name

# SPROMPT Configuration
#
SPROMPT="%r is correct? [n,y,a,e]: "

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

# Links
#
alias links='links duckduckgo.com'
