if ! (( $+commands[node] )); then
  brew install node && npm install -g npm@latest
fi
