# Paths
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/dev-env/bin

# Use Homebrew rather than ~/.rbenv
export RBENV_ROOT=/usr/local/var/rbenv

# Functions
fpath=(/usr/local/share/zsh-completions $fpath)
fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)
eval "$(rbenv init -)"

# Colours
autoload -U colors
colors
setopt prompt_subst

autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
    ' [%b|%a]'
zstyle ':vcs_info:*' formats       \
    ' [%b]'
zstyle ':vcs_info:*' enable git
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[white]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}

# Default Apps
EDITOR='atom'
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
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' insert-tab pending

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

# Extras
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias dotfiles="e ~/Documents/Code/dotfiles"
alias flush="dscacheutil -flushcache"
alias rake="noglob rake"
alias reload='. ~/.zshrc && echo "Your .zshrc was reloaded."'
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; gem update --system; gem update; gem cleanup'
