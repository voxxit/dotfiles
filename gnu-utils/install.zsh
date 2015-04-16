if ! (( $+commands[gcat] )); then
  brew install coreutils
fi

if ! (( $+commands[gfind] )); then
  brew install findutils
fi
