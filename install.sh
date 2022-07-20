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
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' # Yep, twice
nvim --headless -c 'TSUpdateSync'
