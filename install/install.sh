#!/bin/bash

#sdkman
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

./fish-setup.sh

cd ~
git clone https://github.com/leandrorosa/dotfiles.git .
