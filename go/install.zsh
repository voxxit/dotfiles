#!/bin/bash
#
# installs go 1.4.2 and sets up the GOPATH directory, if it doesn't exist
version="1.4.2"

if ! (( $+commands[go] )); then
  pushd /usr/local
    git clone https://go.googlesource.com/go
    pushd go
      git checkout go$version
      pushd src
        ./make.bash

        # ensure we load the path
        . $ZSH/go/path.zsh
      popd
    popd
  popd
fi
