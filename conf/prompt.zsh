### zprompt ###

## PROMPT configuration
#
# Default PROMPT configuration
#
autoload -Uz colors && colors
autoload -Uz add-zsh-hook

prompt_file=~/.zprompt
if [ -e $prompt_file ]
then
    default=`cat $promptFile`
else
    default='💕 '
fi

p1="%{$fg_bold[magenta]%}%B%n%b%{$fg[magenta]%}@%m %{$fg_bold[cyan]%}%B[%~]%b %{$fg[green]%}"
p2="
%(!.#.${default}) %"

function echo_branch_name() {
    branch=`git branch 2>>$ERROR | grep \*`
    PROMPT="${P1}${branch} ${P2}"

    return 0
}
add-zsh-hook precmd echo_branch_name

# SPROMPT Configuration
#
#SPROMPT="%r is correct? [n,y,a,e]: "
SPROMPT="それは %r のことか？[y, n]: "
