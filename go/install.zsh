#!/bin/bash
#
# installs go & sets up the GOPATH directory (unless it exists)
version="1.5.1"

if ! (( $+commands[go] )); then
  brew install go

  . $ZSH/go/path.zsh

  # install all tools
  go get golang.org/x/tools/cmd/...
fi

. $ZSH/go/path.zsh
