### zshrc ###

## Variable
#
# ERROR
#
readonly ERROR=~.zerror

## Function
#
# loadConf
#
files=(`ls $ZDOTDIR/conf`)
for file in $files
do
    source $ZDOTDIR/conf/$file
done

## Include dependence configuration
#
# .zsh_* file.
#
ls -a $HOME | grep .zsh_ >~/.zlist
exitStatus=$?
rm ~/.zlist
if [ $exitStatus -eq 0 ]
then
    zfile=(`ls ~/.zsh_*`)
    for z in $zfile
    do
        source $z
    done
fi

## auto change directory
#
setopt auto_cd

## command correct edition before each completion attempt
#
setopt correct

## Emacs like key bind
#
bindkey -e

## Completion configuration
#
autoload -Uz compinit
compinit

## Autoload reload
#
autoload -Uz reload

## Autoload prompt
#
autoload -Uz prompt

## Command history configuration
#
# History data file and data size
#
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000

# Delete is overlap and old command data
#
setopt hist_ignore_all_dups

# share command history data
#
setopt share_history
