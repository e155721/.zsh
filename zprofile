### zprofile ###

## Set language
#
# UTF-8
#
export LANG=ja_JP.UTF-8

## Environment variable
#
# ZDOTDIR
#
export ZDOTDIR="$HOME"/.zsh.d

# FPATH
#
export FPATH=$FPATH:$ZDOTDIR/function

## Include dependence configuration
#
autoload -Uz fload
fload $HOME/.zpf_*

## ssh configuration
#
# Add ssh key passphrase
#
#ssh-add -A 2> ~/.ssh-tmp
#rm ~/.ssh-tmp
