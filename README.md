# Gitpod Dotfiles

Welcome to this set of opinionated dotfiles provided by Factorial to be able to
start a [Gitpod](https://gitpod.io/) instance preconfigured with all the required configuration to
run [Neovim](https://neovim.io/).

This is of dotfiles is configured using a [chezmoi](https://www.chezmoi.io/).
If you need more help about how to extend this configuration, feel free to
refer to the chezmoi webpage.

Also, **feel free to fork this repository** to customize your own dotfiles with
those configurations that don't match with the current one.

## Welcome

Here you have a great video introduction explaining some of the greatest
features of this configuration:

[Pau Loom](https://www.loom.com/share/fdc69d0b239c4933ad42859e450e44fe)

## Getting Started

If you want to configure this dotfiles for your Gitpod setup, you can go to
[https://gitpod.io/preferences](https://gitpod.io/preferences) and set this
repository url in your `Dotfiles` section.

If you want to know more how the dotfiles in Gitpod work, go to
[https://www.gitpod.io/docs/config-dotfiles](https://www.gitpod.io/docs/config-dotfiles)

## Some highlighted stuff

### Nvim configuration

These dotfiles include all the configuration required to run Nvim with all
common LSP's used in Factorial, like Typescript Server, Eslint, Rubocop,
Sorbet, etc.

#### Nvim key mappings

You can review almost all the keybindings we have in
`private_dot_config/nvim/lua/plugins/which-key.lua`, but these are some of the
main ones:

- `<leader>` + `<leader>`: Search files in the current project with FZF
- `<leader>` + `n`: Open / Close the file explorer
- `<leader>` + `m`: Find the current file in the file explorer
- `<leader>` + `r`: Resume a previous fuzzy finder search
- `<leader>` + `d` + `d`: Find all the LSP offenses for the current file
- `<leader>` + `l` + `a`: Find all the LSP references
- `<leader>` + `l` + `d`: Find all the LSP definitions
- `<leader>` + `l` + `r`: Trigger a variable rename
- `<leader>` + `l` + `f`: Trigger a LSP code actions

Note: Our current `<leader>` in NVim is <kbd>SPACE</kbd>

#### Copilot

If you want to start [Copilot](https://github.com/features/copilot) in Nvim an
enjoy the great tool included in the editor just run `:Copilot` to authenticate.

### Bash aliases

We included some common alias used by some of us. If you want to review them or
add more, go to `private_dot_config/bash/alias.bash`

### Clear screen

If you want to clear the screen, you will be able to do it with: `Ctrl` + `l`

### Tmuxinator / Devenv

If you want to start a Tmuxinator session with quite similar to the old
devenvs, you can run the command `devenv`. This command will start a Tmuxinator
session attaching some of the Gitpod background processes.

### FZF Fuzzy finder

These dot files include [FZF](https://github.com/junegunn/fzf). This is one of
the best files fuzzy finder you will find out there. If you want to get the
best potential of it, try:

- `Ctrl` + `r`: Press this sequence to find executed commands
  in your terminal.
- `Ctrl` + `t`: Press this sequence to find files in the
  current directory.
