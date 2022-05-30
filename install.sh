sh -c "$(curl -fsLS chezmoi.io/get)"
~/bin/chezmoi init
# TODO: add to path?
cd ~/.local/share/chezmoi
git remote add origin https://github.com/masylum/factorial-dotfiles.git
# TODO: Move repo to factorial
git branch -M main
git pull origin main
~/bin/chezmoi apply
source ~/.bashrc

# Install packer dependencies
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
