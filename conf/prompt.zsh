### zprompt ###

## PROMPT configuration
#
# Default PROMPT configuration
#
autoload -U colors && colors
autoload -Uz add-zsh-hook

promptFile=~/'.zpfile'
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
    if [ -e .git ]
    then
        branch=`git branch | grep \*`
        if [ -z "$branch" ]
        then
            branch='No-Branches'
        fi
        PROMPT="${P1}(${branch}) ${P2}"
    else
        PROMPT="${P1} ${P2}"
    fi
}
add-zsh-hook precmd branch_name

# SPROMPT Configuration
#
SPROMPT="%r is correct? [n,y,a,e]: "