function __git_dirty {
  git diff --quiet HEAD &>/dev/null
  [ $? == 1 ] && echo "!"
}

grb_git_prompt() {
  local g="$(__gitdir)"
  if [ -n "$g" ]; then
    local IS_DIRTY="$(__git_dirty)"
    # The __git_ps1 function inserts the current git branch where %s is
    local GIT_PROMPT=`__git_ps1 "(%s${IS_DIRTY})"`
    echo ${GIT_PROMPT}
  fi
}

PS1="\[\033[01;32m\]\w\[\033[01;34m\]\$(grb_git_prompt) \[\033[00m\]\$ "
