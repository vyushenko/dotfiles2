#!/usr/bin/env zsh

# Install Oh-My-Z plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Configure github to work with multple accounts using: https://dev.to/sammm/setting-up-multiple-github-accounts-on-the-same-computer-without-having-to-change-the-repo-url-1007"