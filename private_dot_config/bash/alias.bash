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
alias gs='git status'
alias gl='git pull'
alias gpu='git push'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gg='git grep'
alias gst='git diff master --compact-summary'
alias gca='git commit --amend'
