export HISTFILE=$HOME/.zsh_history
export HISTSIZE=999999
export SAVEHIST=999999
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

alias b="bundle"
alias be="bundle exec"
alias bi="bundle install"
alias bo="bundle outdated"
alias brew-x86_64="arch -x86_64 /usr/local/Homebrew/bin/brew"
alias bu="bundle update"
alias c="clear"
alias cat="bat"
alias g="git"
alias ga="git a"
alias gb="git b"
alias gc="git c"
alias gca="git ca"
alias gcan="git can"
alias gcf="git cf"
alias gch="git ch"
alias gd="git d"
alias gdc="git dc"
alias gl="git l"
alias glc="git lc"
alias gp="git p"
alias gpf="git pf"
alias gpl="git pl"
alias gplr="git plr"
alias gr="git r"
alias grb="git rb"
alias grs="git rs"
alias gs="git s"
alias gsha="git sha"
alias gshc="git shc"
alias gshd="git shd"
alias gshp="git shp"
alias gshs="git shs"
alias gst="git sh"
alias gsw="git sw"
alias gswc="git swc"
alias gw="git w"
alias l="lsd --all --long"
alias ls="lsd --all --long"
alias lt="lsd --all --long --tree"
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

upgrade-everything() {
  brew update && brew upgrade && brew cleanup && brew services restart --all
  brew-x86_64 update && brew-x86_64 upgrade && brew-x86_64 cleanup
  asdf install nodejs latest && asdf install python latest && asdf install ruby latest
  asdf global nodejs latest && asdf global python latest && asdf global ruby latest
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
