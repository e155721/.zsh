### zprofile ###

## Environment variable
#
# ZDOTDIR
#
export ZDOTDIR="$HOME"/.zsh.d

# FPATH
#
export FPATH=$FPATH:$ZDOTDIR/function

## Set language
#
# UTF-8
#
export LANG=ja_JP.UTF-8

## Include dependence configuration
#
[ -z "$LOCAL_FILE" ] && readonly LOCAL_FILE=$HOME/.zpf_local

if [ -e $LOCAL_FILE ]; then
	source "$LOCAL_FILE"
fi

## ssh configuration
#
# Add ssh key passphrase
#
#ssh-add -A 2> ~/.ssh-tmp
#rm ~/.ssh-tmp
