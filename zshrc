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
setopt inc_append_history
setopt extended_history
setopt share_history
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_reduce_blanks
setopt hist_ignore_space
setopt hist_no_store
setopt hist_no_functions
setopt no_hist_beep

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
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g --='cd -'

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

# Directories
alias l='ls'
alias la='ls -A'
alias ls='ls -F'
alias ll='ls -l'

# Applications
alias chrome='open -a Google\ Chrome'
alias firefox='open -a Firefox'
alias preview='open -a Preview'
alias safari='open -a Safari'
alias textedit='open -a TextEdit'
alias writer='open -a iA\ Writer'

# Extras
alias flush="sudo killall -HUP mDNSResponder"
alias rmdss="find . -name '*.DS_Store' -type f -delete"

# Use Homebrew rather than ~/.rbenv
export RBENV_ROOT=/usr/local/var/rbenv
