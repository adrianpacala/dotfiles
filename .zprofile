eval "$(/opt/homebrew/bin/brew shellenv)"

export CFLAGS="-I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include"
export DOTNET_CLI_TELEMETRY_OPTOUT="1"
export EDITOR="code --new-window --wait"
export FZF_DEFAULT_COMMAND="rg --files --hidden"
export HOMEBREW_NO_ANALYTICS="1"
export HOMEBREW_NO_ENV_HINTS="1"
export LDFLAGS="-L$(brew --prefix openssl)/lib"
export PATH="$HOME/bin:$HOME/Library/Application Support/JetBrains/Toolbox/scripts:$(brew --prefix postgresql@15)/bin:$(brew --prefix python)/libexec/bin${PATH+:$PATH}"

. $(brew --prefix asdf)/libexec/asdf.sh
. $HOME/.asdf/plugins/dotnet/set-dotnet-env.zsh
. $HOME/.cargo/env
