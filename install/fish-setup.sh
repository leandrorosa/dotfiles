#!/usr/local/bin/fish

#fisher package manager
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

fisher add reitzig/sdkman-for-fish
fisher add evanlucas/fish-kubectl-completions
fisher add barnybug/docker-fish-completion
