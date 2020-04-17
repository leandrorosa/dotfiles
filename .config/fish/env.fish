#set -Ux RUBY_CONFIGURE_OPTS "--with-openssl-dir=$(brew --prefix openssl@1.1)"

set -gx GOPATH ~/Code/Go
mkdir -p GOPATH


set -gx PATH (go env GOPATH)/bin $PATH

