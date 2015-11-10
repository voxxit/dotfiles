export GOPATH="$HOME/go"

export PATH="$PATH:/usr/local/opt/go/libexec/bin"
export PATH="$PATH:$GOPATH/bin"

# ensure things exist if we're pointing to them...
mkdir -p ${GOPATH}/{bin,pkg,src}
