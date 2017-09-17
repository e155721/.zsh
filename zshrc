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
if [ -z "$ERROR_FILE" ]; then
    readonly ERROR_FILE="$HOME/.zerror"
fi

## Load configuration file
#
# Load global configuration
#
loadcf "$ZDOTDIR"/conf/*

# Load local configuration
#
loadcf "$HOME"/.zsh_*
