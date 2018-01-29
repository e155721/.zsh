readonly PROFILE='.zpf_local'
readonly CONFIG='.zshrc'

cd "$HOME"
[ -e "$PROFILE" ] && mv -v $PROFILE .zprofile_local
[ -e "$CONFIG" ] && mv -v $CONFIG .zsh_local
hh
