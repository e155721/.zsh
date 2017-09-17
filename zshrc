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
[ -z "$ERROR_FILE" ] && readonly ERROR=/dev/null

## Load configuration file
#
# Load global configuration
#
loadcf "$ZDOTDIR"/conf/*

# Load local configuration
#
loadcf "$HOME"/.zsh_*
