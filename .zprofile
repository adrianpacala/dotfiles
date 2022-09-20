export HISTFILE="~/.zhistory"
export HISTSIZE=999999
export SAVEHIST=999999

eval "$(/opt/homebrew/bin/brew shellenv)"

export CFLAGS="-I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include"
export LDFLAGS="-L$(brew --prefix openssl)/lib"

. /opt/homebrew/opt/asdf/libexec/asdf.sh
