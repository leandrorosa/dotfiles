#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#dev
brew install bat
brew install docker
brew install fish
brew install go
brew install htop
brew install vim
brew install gdub
brew install terraform
brew install gdub
brew cask install visual-studio-code
brew cask install intellij-idea


#apps
brew cask install station
brew cask install google-chrome
brew cask install spotify

./fish-setup.sh

./../install.sh