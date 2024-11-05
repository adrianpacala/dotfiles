eval "$(/opt/homebrew/bin/brew shellenv)"

export CFLAGS="-I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include"
export CPPFLAGS="-I$(brew --prefix llvm)/include"
export EDITOR="code"
export FZF_DEFAULT_COMMAND="rg --files --hidden"
export HOMEBREW_NO_ANALYTICS="1"
export HOMEBREW_NO_ENV_HINTS="1"
export PATH="$(brew --prefix postgresql@16)/bin:$(brew --prefix python)/libexec/bin${PATH+:$PATH}"

. $(brew --prefix asdf)/libexec/asdf.sh
