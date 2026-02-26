# Paths
export PATH=:/opt/local/bin:/usr/local/bin:/opt/bin:/usr/bin:/bin:/opt/local/sbin:/usr/local/sbin:/usr/sbin:/sbin

# Functions
fpath=(/opt/homebrew/share/zsh-completions $fpath)
fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)

# Colours
autoload -U colors
colors
setopt prompt_subst

# Use Spaceship for the prompt
source "/opt/homebrew/opt/spaceship/spaceship.zsh"

# Default Apps
EDITOR='code'
BROWSER='open'
PAGER='less'

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=$HISTSIZE
setopt append_history
setopt complete_aliases
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_no_functions
setopt hist_no_store
setopt hist_save_no_dups
setopt hist_reduce_blanks
setopt inc_append_history share_history
setopt no_hist_beep
setopt share_history

# Completion
autoload -Uz compinit
compinit -u
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' insert-tab pending

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit -u
fi

# Path
setopt auto_cd

# History
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Prompt
# Show '>:' in green when things are happy and red when they're not.
PROMPT=$'%{\e[0;%(?.32.31)m%}>:%{\e[0m%} '
RPROMPT='%F{8}%~%F{reset}$(vcs_info_wrapper)'

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
alias reload='. ~/.zshrc && echo ".zshrc was reloaded."'
alias rpuma='puma-dev -stop; pkill puma; spring stop'

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Private
source ~/.zsh/private/aliases

# asdf
source /opt/homebrew/opt/asdf/libexec/asdf.sh

eval "$(/opt/homebrew/bin/brew shellenv)"
