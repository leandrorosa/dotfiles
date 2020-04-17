#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
sudo yum groupinstall 'Development Tools' -y
echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/centos/.bash_profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
brew install gcc

#dev
brew install bat
brew install docker
brew install fish
brew install go
brew install htop
brew install vim
brew install gdub
brew install terraform

./fish-setup.sh

./../install.sh

