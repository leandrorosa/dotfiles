function brew-dump -d "Generate a Brewfile from the currently-installed packages, casks, and taps."
    echo "Generate a Brewfile from the currently-installed packages, casks, and taps."
    brew bundle dump --file=~/.dotfiles/Brewfile --force
    echo "Finished generating Brewfile."
end