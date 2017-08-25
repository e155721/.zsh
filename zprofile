### zprofile ###

## Set language
#
# UTF-8
#
export LANG=ja_JP.UTF-8

## ZSH path
#
export ZDOTDIR=~/.zsh.d

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
