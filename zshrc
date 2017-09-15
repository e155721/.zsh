### zshrc ###

## Variable
#
# ERROR_FILE
#
if [ -z "$ERROR_FILE" ]; then
    readonly ERROR_FILE=~/.zerror
fi

autoload -Uz fload

## Load configuration file
#
fload "$ZDOTDIR"/conf/*

## Include dependence configuration
#
fload "$HOME"/.zsh_*

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
