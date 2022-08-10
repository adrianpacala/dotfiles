export CFLAGS="-I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include"
export FZF_DEFAULT_COMMAND="rg --files --hidden"
export LDFLAGS="-L$(brew --prefix openssl)/lib"

# eval "$(goenv init -)"
eval "$(nodenv init -)"
# eval "$(pyenv init -)"
eval "$(rbenv init -)"
