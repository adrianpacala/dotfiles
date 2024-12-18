export HISTFILE=$HOME/.zsh_history
export HISTSIZE=999999
export SAVEHIST=999999
export ZPLUG_HOME=/opt/homebrew/opt/zplug

source $ZPLUG_HOME/init.zsh

zplug "djui/alias-tips"
zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "~/.zsh", from:local

zplug check || zplug install
zplug load

autoload -U colors
autoload -U compinit
autoload -U promptinit

colors
compinit
promptinit

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

bindkey -e

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

unsetopt CORRECT_ALL
unsetopt MENU_COMPLETE
unsetopt NOMATCH

setopt ALWAYS_TO_END
setopt APPEND_HISTORY
setopt AUTO_CD
setopt AUTO_MENU
setopt AUTO_NAME_DIRS
setopt COMPLETE_IN_WORD
setopt CORRECT
setopt EXTENDED_GLOB
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt INTERACTIVE_COMMENTS
setopt NO_BEEP
setopt SHARE_HISTORY

alias b="bat"
alias bp="bat -p"
alias c="clear"
alias g="git"
alias j="zellij"
alias l="lsd -al"
alias lt="lsd -al --tree"
alias n="nvim"
alias t="trash"
alias ts="trash -sy"
alias vim="nvim"
