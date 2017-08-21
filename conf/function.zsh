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
        source ~/.zsh/zshrc
    else
        rm -f $promptFile
        source ~/.zsh/zshrc
    fi
}
