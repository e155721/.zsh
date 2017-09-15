### zshenv ###

## Environment variable
#
# ZDOTDIR
#
export ZDOTDIR="$HOME"/.zsh.d

# FPATH
#
export FPATH=$FPATH:$ZDOTDIR/function

## Autoload function
#
# loadcf
#
autoload -Uz loadcf
