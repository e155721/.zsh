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
loadcf "$ZDOTDIR"/conf/*

# Load local configuration
#
files="$HOME"/.zsh_*
loadcf "$files"
