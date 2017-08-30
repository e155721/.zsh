### function.zsh ###

## Function
#
# prompt
#
function prompt() {
    prompt=$1
    if [ -n "$prompt" ]
    then
        echo $prompt > $promptFile
        source $ZDOTDIR/zshrc
    else
        rm -f $promptFile
        source $ZDOTDIR/zshrc
    fi
}

# reload
#
function reload() {
    source $ZDOTDIR/zprofile
    source $ZDOTDIR/zshrc
}
