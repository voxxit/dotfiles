export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"

# ensure things exist if we're pointing to them...
mkdir -p ${GOPATH}/{bin,pkg,src}
