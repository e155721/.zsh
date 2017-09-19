### zshrc ###

## Autoload function
#
# reload
#
autoload -Uz reload

# prompt
#
autoload -Uz prompt

# loadcf
#
autoload -Uz loadcf

## Variable
#
# ERROR_FILE
#
[ -z "$ERROR" ] && readonly ERROR=/dev/null

## Load configuration file
#
# Load global configuration
#
for file in "$ZDOTDIR"/conf/*
do
    [ -e "$file" ] || exit
    source "$file"
done

# Load local configuration
#
files="$HOME"/.zsh_*
for file in "$files"
do
    [ -e "$file" ] || exit
    source "$file"
done
