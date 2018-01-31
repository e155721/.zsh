readonly PROFILE='.zpf_local'
readonly CONFIG='.zshrc'
readonly HISTORY='.zsh_history'

cd "$HOME"
[ -e "$PROFILE" ] && mv -v $PROFILE .zprofile_local
[ -e "$CONFIG" ] && mv -v $CONFIG .zsh_local
[ -e "$HISTORY" ] && mv -v $HISTORY .zhistory
hh
