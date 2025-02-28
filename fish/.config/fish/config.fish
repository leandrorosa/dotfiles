source ~/.config/fish/asdf.fish
source ~/.config/fish/aliases.fish
source ~/.config/fish/abbrev.fish

for f in ~/.config/fish/env/*.fish;
    source $f
end

for f in ~/.config/fish/functions/*.fish;
    source $f
end

starship init fish | source

if set -q ZELLIJ
else
  zellij
end

