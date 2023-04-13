eval "$(/opt/homebrew/bin/brew shellenv)"

export CFLAGS="-I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include"
export CPPFLAGS="-I$(brew --prefix llvm)/include"
export DOTNET_CLI_TELEMETRY_OPTOUT="1"
export EDITOR="nvim"
export FZF_DEFAULT_COMMAND="rg --files --hidden"
export HOMEBREW_NO_ANALYTICS="1"
export HOMEBREW_NO_ENV_HINTS="1"
export LDFLAGS="-L$(brew --prefix llvm)/lib -L$(brew --prefix openssl)/lib"
export MGFXC_WINE_PATH="/Users/adrianpacala/.winemonogame"
export PATH="$HOME/.local/bin:$HOME/Library/Application Support/JetBrains/Toolbox/scripts:$(brew --prefix postgresql@15)/bin:$(brew --prefix python)/libexec/bin${PATH+:$PATH}"

. $(brew --prefix asdf)/libexec/asdf.sh
. $HOME/.asdf/plugins/dotnet/set-dotnet-env.zsh
. $HOME/.cargo/env
