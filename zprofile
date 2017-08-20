### zprofile ###

## ZSH path
#
export ZDOTDIR=~/.zsh

## Set language
#
# UTF-8
#
export LANG=ja_JP.UTF-8

## Include dependence configuration
#
local='.zprofile_local'
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
