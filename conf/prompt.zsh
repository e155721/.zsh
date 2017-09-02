### zprompt ###

## PROMPT configuration
#
# Default PROMPT configuration
#
autoload -Uz colors && colors
autoload -Uz add-zsh-hook

promptFile=~/'.zprompt'
if [ -e $promptFile ]
then
    default=`cat $promptFile`
else
    default='💕 '
fi

P1="%{$fg_bold[magenta]%}%B%n%b%{$fg[magenta]%}@%m %{$fg_bold[cyan]%}%B[%~]%b %{$fg[green]%}"
P2="
%(!.#.${default}) %"

function branch_name() {
    error=~/.zerror
    git status > $error 2>&1
    exitStatus=$?
    rm $error

    if [ $exitStatus -eq 0 ]
    then
        branch=`git branch | grep \*`
        PROMPT="${P1}${branch} ${P2}"
    else
        PROMPT="${P1} ${P2}"
    fi
}
add-zsh-hook precmd branch_name

# SPROMPT Configuration
#
#SPROMPT="%r is correct? [n,y,a,e]: "
SPROMPT="それは %r か？[y, n]: "
