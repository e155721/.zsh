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
export ZDOTDIR=~/.zsh.d

# FPATH
#
export FPATH=$FPATH:$ZDOTDIR/function

## Include dependence configuration
#
local='.zpf_local'
if [ -e $local ]
then
    source ~/$local
fi

## ssh configuration
#
# Add ssh key passphrase
#
#ssh-add -A 2> ~/.ssh-tmp
#rm ~/.ssh-tmp
