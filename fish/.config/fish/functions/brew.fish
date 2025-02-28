function brew-dump -d "Generate a Brewfile from the currently-installed packages, casks, and taps."
    gum spin --spinner dot --title "Generating Brewfile..." -- brew bundle dump --file=~/.dotfiles/Brewfile --force
    echo "Finished generating Brewfile."
end