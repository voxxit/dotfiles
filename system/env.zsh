# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

export ARCHFLAGS="-arch $(uname -m)"

if [ $(uname -s) = "Darwin" ]; then
  export MAKEFLAGS="-j$(gnproc)"
else 
  export MAKEFLAGS="-j$(nproc)"
fi
