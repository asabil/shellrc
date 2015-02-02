export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export NAME="Ali Sabil"
export EMAIL_ADDRESS="example@example.net"
export EMAIL=$EMAIL_ADDRESS
if /usr/libexec/java_home -v 1.8 >/dev/null 2>&1; then
	export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
fi

[[ -d "$HOME/.local/bin" ]] && PATH="$HOME/.local/bin:$PATH"
[[ -d "$HOME/.cabal/bin" ]] && PATH="$HOME/.cabal/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -d "/Applications/Flex/bin" ]] && PATH="$PATH:/Applications/Flex/bin"

export NVM_DIR="$HOME/.local/lib/nvm"
brew -v >/dev/null 2>&1 && source $(brew --prefix nvm)/nvm.sh
