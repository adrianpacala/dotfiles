eval "$(/opt/homebrew/bin/brew shellenv)"

export CFLAGS="-I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include"
export CPPFLAGS="-I$(brew --prefix llvm)/include"
export EDITOR="nvim"
export FZF_DEFAULT_COMMAND="rg --files --hidden"
export HOMEBREW_NO_ANALYTICS="1"
export HOMEBREW_NO_ENV_HINTS="1"
export PATH="$(brew --prefix postgresql@17)/bin:$(brew --prefix python)/libexec/bin${PATH+:$PATH}"

# Added by Toolbox App
export PATH="$PATH:/Users/adrianpacala/Library/Application Support/JetBrains/Toolbox/scripts"

eval "$("$(brew --prefix mise)"/bin/mise activate zsh)"
