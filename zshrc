### zshrc ###

## Autoload function
#
# fload
autoload -Uz fload

# reload
#
autoload -Uz reload

# prompt
#
autoload -Uz prompt

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
fload "$ZDOTDIR"/conf/*

# Load local configuration
#
fload "$HOME"/.zsh_*
