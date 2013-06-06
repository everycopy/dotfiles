# Colours
autoload -U colors
colors
setopt prompt_subst

# Default Apps
EDITOR='subl'
BROWSER='open'
PAGER='less'

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=$HISTSIZE
setopt append_history
setopt extended_history
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_no_functions
setopt hist_no_store
setopt hist_save_no_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt no_hist_beep
setopt share_history

# Completion
autoload -U compinit
compinit

# Path
setopt auto_cd

# History
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Prompt
# Show '>:' in green when things are happy and red when they're not.
PROMPT=$'%{\e[0;%(?.32.31)m%}>:%{\e[0m%} '
RPROMPT='%F{8}%~%F{reset}'

# ZSH
alias reload='source ~/.zshrc && echo "Your .zshrc was reloaded." '
alias config='subl ~/.zshrc'

# Navigation
alias ...='../..'
alias ....='../../..'
alias .....='../../../..'
alias //='cd -'

# Directories
alias l='ls -A'
alias la='ls -lA'
alias ls='ls -F'
alias ll='ls -l'

# Shortcuts
alias c='clear'
alias de='cd ~/Documents/Code'
alias dr='cd ~/Documents/Dropbox'
alias dt='cd ~/Desktop'
alias g='git'
alias h='history'
alias o='open'
alias oo='open .'
alias q='exit'
alias s='subl .'
alias w='which'

# Applications
alias chrome='open -a Google\ Chrome'
alias firefox='open -a Firefox'
alias preview='open -a Preview'
alias safari='open -a Safari'
alias writer='open -a iA\ Writer'

# Extras
alias flush="sudo killall -HUP mDNSResponder"
alias rmdss="find . -name '*.DS_Store' -type f -delete"

# Software Update
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; gem update --system; gem update'

# Use Homebrew rather than ~/.rbenv
export RBENV_ROOT=/usr/local/var/rbenv
