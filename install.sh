#!/bin/bash

~/bin/chezmoi init

pushd ~/.local/share/chezmoi
  git remote add origin $SUPERVISOR_DOTFILE_REPO
  git branch -M main
  git pull origin main
popd

~/bin/chezmoi apply

source ~/.bashrc

# Install packer dependencies
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' -u ~/.config/nvim/lua/plugins.lua

# TODO: Add the same for treesitter

# Git aliases & config
git config --global push.default tracking
git config --global pull.default tracking
git config --global alias.co 'checkout'
git config --global alias.br 'branch'
git config --global alias.ci 'commit'
git config --global alias.st 'status'
git config --global alias.sl 'stash list'
git config --global alias.sp 'stash pop'
git config --global alias.l "log --pretty=format:'%Cred%h%Creset - %C(green) %an %C(reset) - %C(yellow)%d%Creset %s %Cgreen(%cr) %Creset'"
git config --global alias.da 'diff --cached'
git config --global alias.pushnew "!git push -u origin $(git rev-parse --abbrev-ref HEAD)"
git config --global alias.wip "!git add --all . && git commit -m 'WIP'"
git config --global alias.fp 'fetch -p'
