export GOROOT="/usr/local/go"
export PATH="$GOROOT/bin:$PATH"

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# ensure things exist if we're pointing to them...
mkdir -p ${GOPATH}/{bin,pkg,src}
