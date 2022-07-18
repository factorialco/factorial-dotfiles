#!/bin/bash

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories

# Tree
if [ ! -x "$(which tree)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# Jumps
alias jb='cd /workspace/backend/'
alias jf='cd /workspace/frontend/'
alias jc='cd ~/.local/share/chezmoi/'

# GIT Aliases
alias gap='git add -p'
alias gst='git status'
alias gl='git pull'
alias gpu='git push'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
# alias gg='git grep'
# alias gst='git diff master --compact-summary'
alias gca='git commit --amend'
alias gda='git diff --cached'
alias gbr='git branch'
alias gfp='git fetch -p'
alias gpnew='!git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gwip="!git add --all . && git commit -m 'WIP'"
alias gl="git log --pretty=format:'%Cred%h%Creset - %C(green) %an %C(reset) - %C(yellow)%d%Creset %s %Cgreen(%cr) %Creset'"
