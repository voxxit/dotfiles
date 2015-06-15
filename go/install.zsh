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
        # make w/o test suite; use `./all.bash` if builds fail
        ./make.bash

        # ensure we load the path
        . $ZSH/go/path.zsh

        # include all tools
        go get golang.org/x/tools/cmd/...
      popd
    popd
  popd
fi
