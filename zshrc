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
for file in "$HOME"/.zsh_*
do
    [ -e "$file" ] || exit
    source "$file"
done 2>$ERROR
