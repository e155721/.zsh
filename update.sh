cd "$HOME"
readonly file='.zpf_local'
[ -e "$file" ] && mv -v $file .zprofile_local
[ -e .zshrc ] && mv - v.zshrc .zsh_local

hh
