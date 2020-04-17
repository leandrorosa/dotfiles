#set -Ux RUBY_CONFIGURE_OPTS "--with-openssl-dir=$(brew --prefix openssl@1.1)"

set -gx GOPATH ~/Code/Go
mkdir -p "$GOPATH/bin"
mkdir -p "$GOPATH/src"

set -gx PROVISIONER_HOME "/tmp/puppet-provisioner"
mkdir -p "$PROVISIONER_HOME/bin"

# Path
if not set -q -U fish_user_paths
  set -U fish_user_paths "$HOME/bin" "$GOPATH/bin" "$HOME/.local/bin" "$PROVISIONER_HOME/bin"
end

