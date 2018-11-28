# Keep a lot of history
export HISTSIZE=9999
export HISTFILESIZE=999999

# Useful aliases
alias ls='ls -CFG'
alias ll='ls -lahG'
alias la='ls -AG'
alias l.='ls -d .*'

# Figly aliases
alias gf='cd ~/figly'

# Prompt
source ~/.custom/git-completion.sh
source ~/.custom/git-prompt.sh
PROMPT_COMMAND=__prompt_command

# direnv (works by prepending to PROMPT_COMMAND)
eval $(direnv hook bash)

source ~/.custom/iterm_shell_integration.sh  # this must come after PROMPT_COMMAND

function __prompt_command() {
  local STATUS="$?"
  PS1="[\t] \u \w $(__git_ps1 ' (%s)')"

  local Off='\[\e[0m\]'

  local Red='\[\e[0;31m\]'
  local Green='\[\e[0;32m\]'

  if [ $STATUS -eq 0 ]; then
    PS1+=" ${Green}[✔]${Off}"
  else
    PS1+=" ${Red}[✘ $STATUS]${Off}"
  fi

  PS1+="\n$ "
}

export EDITOR=vim

# Github API Token to benefit brew
export HOMEBREW_GITHUB_API_TOKEN=5ea00e6d41d892b6187252d684d911578c2b04ed

# opam
eval $(opam config env)

# nvm
export NVM_DIR="/Users/n/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

########################################
# PATH

# Put Homebrew ahead of system defaults
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# The next line updates PATH for the Google Cloud SDK.
source '/Users/n/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/n/google-cloud-sdk/completion.bash.inc'

# place ~/bin in front of everything
export PATH=/Users/n/bin:$PATH

# TeX
export PATH=$PATH:/Library/TeX/texbin
