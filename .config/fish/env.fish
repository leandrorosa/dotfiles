set -gx GOPATH ~/Code/Go
mkdir -p "$GOPATH/bin"
mkdir -p "$GOPATH/src"

set -U fish_user_paths "$HOME/bin" $fish_user_paths
set -U fish_user_paths "$GOPATH/bin" $fish_user_paths
set -U fish_user_paths "$HOME/.local/bin" $fish_user_paths
set -U fish_user_paths "$HOME/anaconda3/bin" $fish_user_paths

