function source-dir --description 'Source all files in a directory'
    for f in $argv[1]/*.fish
        source $f
    end
end

source ~/.config/fish/aliases.fish


source-dir ~/.config/fish/kubernetes
source-dir ~/.config/fish/git
source-dir ~/.config/fish/docker

source-dir ~/.config/fish/env
source-dir ~/.config/fish/functions
source-dir ~/.config/fish/completions

source-dir ~/.config/fish/shell-config

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
