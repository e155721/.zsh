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

## Environment varible configurasion
#
function checkEnv() {
    orgEnv=(Darwin newbie.local x86_64)
    thisEnv=(`uname -snm`)
    i=1

    for elmOrg ($orgEnv)
        if [ $thisEnv[$i] = $elmOrg ]
        then
            i=$((i+1))
        fi
}

checkEnv
if [ $i -eq 4 ]
then
    ## Environment variable
    #
    # /usr/local/usr_bin
    #
    export PATH=$PATH:/usr/local/usr_bin:/usr/local/usr_bin/teco

    # /usr/local/usr_sh
    #
    export PATH=$PATH:/usr/local/usr_sh:/usr/local/usr_sh/Day

    # /usr/local/src/bin and higher priority
    #
    export PATH=/usr/local/src/bin:$PATH
fi
