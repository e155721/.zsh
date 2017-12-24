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
for file in "$HOME"/.zsh_*
do
    [ -e "$file" ] || exit
    source "$file"
done 2>$ERROR

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
