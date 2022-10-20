export ZPLUG_HOME=/opt/homebrew/opt/zplug

source $ZPLUG_HOME/init.zsh

zplug "djui/alias-tips"
zplug "mafredri/zsh-async", from:"github"
zplug "zdharma/fast-syntax-highlighting"
zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"

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

alias b="bundle"
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"
alias c="clear"
alias g="git"
alias ga="git a"
alias gb="git b"
alias gc="git c"
alias gca="git ca"
alias gcn="git cn"
alias gd="git d"
alias gdc="git dc"
alias ge="git e"
alias gf="git f"
alias gk="git k"
alias gl="git l"
alias glc="git lc"
alias gp="git p"
alias gpf="git pf"
alias gr="git r"
alias grs="git rs"
alias gs="git s"
alias gt="git t"
alias gta="git ta"
alias gtc="git tc"
alias gtd="git td"
alias gtp="git tp"
alias gts="git ts"
alias gu="git u"
alias gur="git ur"
alias l="lsd -l"
alias la="lsd -a"
alias lal="lsd -al"
alias ls="lsd"
alias lt="lsd --tree"
alias ni="npm install"
alias nr="npm run"
alias nu="npm uninstall"
alias r="bin/rails"
alias rc="bin/rails console"
alias rd="bin/rails destroy"
alias rg="bin/rails generate"
alias rs="bin/rails server"
alias rt="bin/rails test"
alias s="bin/rspec"
alias t="trash"
alias te="trash -sy"
alias y="yarn"
alias ya="yarn add"
alias yr="yarn run"
alias yrm="yarn remove"

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
