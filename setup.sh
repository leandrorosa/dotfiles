#!/bin/bash

# Install Homebrew (if not already installed)
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install packages, casks, and taps from Brewfile
brew bundle --file=~/.dotfiles/Brewfile