#!/usr/local/bin/fish

#oh my fish
curl -L https://get.oh-my.fish > omf-install.sh
chmod +x omf-install.sh
./omf-install.sh  --yes

#fisher package manager
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

omf install robbyrussell
fisher add reitzig/sdkman-for-fish
fisher add evanlucas/fish-kubectl-completions
fisher add barnybug/docker-fish-completion
