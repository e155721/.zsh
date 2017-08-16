### .zprofile ###

## ssh configuration
#
# Add ssh key passphrase
#
#ssh-add -A 2> ~/.ssh-tmp
#rm ~/.ssh-tmp

## Set language
#
# UTF-8
#
export LANG=ja_JP.UTF-8

## Include dependence configuration
#
local='.zprofile'
if [ -e $local ]
then
    source ~/$local
fi
