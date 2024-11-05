export HISTFILE=$HOME/.zsh_history
export HISTSIZE=999999
export SAVEHIST=999999
export ZPLUG_HOME=/opt/homebrew/opt/zplug

source $ZPLUG_HOME/init.zsh

zplug "djui/alias-tips"
zplug "mafredri/zsh-async", from:"github"
zplug "z-shell/F-Sy-H"
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

alias c="clear"
alias cat="bat"
alias g="git"
alias l="lsd --all --long"
alias ls="lsd --all --long"
alias lt="lsd --all --long --tree"
alias t="trash"
alias te="trash -sy"
alias vim="nvim"

clean-files() {
  trash -v $HOME/Downloads/* $HOME/Screenshots/* 2>/dev/null || true
}

git-delete-merged-branches() {
  git branch --merged | egrep -v "(^\*|dev|main)" | xargs git branch -d
}

kill-process() {
  local pid=$(ps -ef | sed 1d | eval "fzf ${FZF_DEFAULT_OPTS} -m --header='kill process'" | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
    kp
  fi
}

short-prompt() {
  export PS1="$ "
}
