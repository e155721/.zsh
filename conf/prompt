### zprompt ###

## PROMPT configuration
#
# Default PROMPT configuration
#
autoload -Uz colors && colors
autoload -Uz add-zsh-hook

if [ -z "$PROMPT_FILE" ]; then
    readonly PROMPT_FILE=~/.zprompt
fi

if [ -e $PROMPT_FILE ]
then
    default=`cat $PROMPT_FILE`
else
    default=$
fi

function echo_branch_name() {
    branch=`git branch 2>>$ERROR_FILE | grep \*`
    PROMPT="%{$fg_bold[magenta]%}%B%n%b%{$fg[magenta]%}@%m %{$fg_bold[cyan]%}%B[%~]%b %{$fg[green]%}${branch}
%(!.#.${default}) %"

    return 0
}
add-zsh-hook precmd echo_branch_name

# SPROMPT Configuration
#
#SPROMPT="%r is correct? [n,y,a,e]: "
SPROMPT="それは %r のことか？[y, n]: "
