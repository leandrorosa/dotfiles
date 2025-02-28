set -x GOPATH ~
set -x GOOS darwin
set -x GO111MODULE auto
set -x GOROOT "/usr/local/go"

mkdir -p "$GOPATH/bin"
mkdir -p "$GOPATH/src"

fish_add_path "$GOPATH/bin"
