# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

export ARCHFLAGS="-arch $(uname -m)"
export MAKEFLAGS="-j$(gnproc)"
