# Keep a lot of history
export HISTSIZE=9999
export HISTFILESIZE=999999

# Useful aliases
alias ls='ls -CFG'
alias ll='ls -lahG'
alias la='ls -AG'
alias l.='ls -d .*'

# alias commands
alias vim=nvim
alias npm=pnpm

export EDITOR=nvim

# Github API Token to benefit brew
export HOMEBREW_GITHUB_API_TOKEN=d9346ddf68d3f6b826eecf605b14dad992e3628c

# nvm
export NVM_DIR="/Users/n/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

_nvmrc_hook() {
  if [[ $PWD == $PREV_PWD ]]; then
    return
  fi

  PREV_PWD=$PWD
  [[ -f ".nvmrc" ]] && nvm use
}

if ! [[ "${PROMPT_COMMAND:-}" =~ _nvmrc_hook ]]; then
  PROMPT_COMMAND="_nvmrc_hook${PROMPT_COMMAND:+;$PROMPT_COMMAND}"
fi

########################################
# PATH

# Put Homebrew ahead of system defaults
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Go
export GOBIN=$HOME/go/bin
export PATH=$GOBIN:$PATH

# TeX
export PATH=$PATH:/Library/TeX/texbin

# place ~/bin in front of everything
export PATH=$HOME/bin:$PATH

set -o vi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init bash)"
