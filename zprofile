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
if [ -z $LOCAL_PROFILE ]; then
    readonly LOCAL_PROFILE=~/.zpf_local
fi

if [ -e $LOCAL_PROFILE ]; then
    source $LOCAL_PROFILE
fi

## ssh configuration
#
# Add ssh key passphrase
#
#ssh-add -A 2> ~/.ssh-tmp
#rm ~/.ssh-tmp
