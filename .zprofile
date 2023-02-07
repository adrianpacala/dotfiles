export HISTFILE="~/.zhistory"
export HISTSIZE=999999
export SAVEHIST=999999

eval "$(/opt/homebrew/bin/brew shellenv)"

export CFLAGS="-I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include"
export LDFLAGS="-L$(brew --prefix openssl)/lib"
export PATH="$(brew --prefix postgresql@15)/bin:$(brew --prefix python)/libexec/bin${PATH+:$PATH}"

. $(brew --prefix asdf)/libexec/asdf.sh
. "$HOME/.cargo/env"
