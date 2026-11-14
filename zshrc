# Paths
export PATH=/opt/local/bin:/usr/local/bin:/opt/bin:/usr/bin:/bin:/opt/local/sbin:/usr/local/sbin:/usr/sbin:/sbin
eval "$(/opt/homebrew/bin/brew shellenv)"

# Functions
fpath=(~/.zsh/functions $HOMEBREW_PREFIX/share/zsh-completions $fpath)
autoload -U ~/.zsh/functions/*(:t)

# Colours
autoload -U colors
colors
setopt prompt_subst

# Use Spaceship for the prompt
source "/opt/homebrew/opt/spaceship/spaceship.zsh"

# Default Apps
export EDITOR='zed --wait'
export BROWSER='open'
export PAGER='less'

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE
setopt append_history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_no_functions
setopt hist_no_store
setopt hist_save_no_dups
setopt hist_reduce_blanks
setopt inc_append_history share_history
setopt no_hist_beep

# Completion
setopt complete_aliases
autoload -Uz compinit
compinit -u
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' insert-tab pending

# Path
setopt auto_cd

# History
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Navigation
alias ...='../..'
alias ....='../../..'
alias .....='../../../..'
alias //='cd -'

# Directories
alias l='ls'
alias la='ls -A'
alias ls='ls -F'
alias ll='ls -alF'

# Shortcuts
alias g='git'
alias o='open'
alias oo='open .'
alias q='exit'
alias t='trash'
alias w='which'
alias cc='claude'

# Extras
alias dotfiles="e ~/Code/dotfiles"
alias flush="dscacheutil -flushcache"
alias rake="noglob rake"
alias rpuma='puma-dev -stop; pkill puma; spring stop'

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Private
[[ -f ~/.zsh/private/aliases ]] && source ~/.zsh/private/aliases

export PATH="$HOME/.local/bin:$PATH"
# Terminals get mise's prompt hook. Apps that load the environment through a
# non-TTY `zsh -i -l -c` (Paseo, Zed) get shims instead, so tools still follow
# each project's .tool-versions rather than whatever ~ resolved to at launch.
if [[ -t 1 ]]; then
  eval "$(mise activate zsh)"
else
  eval "$(mise activate zsh --shims)"
fi

export DO_NOT_TRACK=1
