### zshrc ###

## Variable
#
# ERROR
#
readonly ERROR=~/.zerror

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
ls -a $HOME | grep .zsh_ >$ERROR
exit_status=$?
if [ $exit_status -eq 0 ]; then
    local _zfile=(`ls ~/.zsh_*`)
    for local _z in $_zfile
    do
        source $_z
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
