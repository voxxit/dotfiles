### ruby-install
if ! (( $+commands[ruby-install] )); then
  brew install ruby-install
fi

### chruby
if ! (( $+commands[chruby-exec] )); then
  brew install chruby
fi

if (( $+commands[gem] )); then
  ### showterm.io - to record terminal sessions for cool howtos
  if ! gem which showterm &>/dev/null; then
    gem install showterm
  fi

  ### bond - https://github.com/cldwalker/bond
  if ! gem which bond &>/dev/null; then
    gem install bond
  fi
fi
