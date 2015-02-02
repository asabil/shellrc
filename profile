export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export NAME="Ali Sabil"
export EMAIL_ADDRESS="example@example.net"
export EMAIL=$EMAIL_ADDRESS
export EDITOR=vim
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

[[ -d "$HOME/.local/bin" ]] && PATH="$HOME/.local/bin:$PATH"
[[ -d "$HOME/.cabal/bin" ]] && PATH="$HOME/.cabal/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -d "/Applications/Flex/bin" ]] && PATH="$PATH:/Applications/Flex/bin"

export NVM_DIR="$HOME/.local/lib/nvm"
brew -v >/dev/null 2>&1 && source $(brew --prefix nvm)/nvm.sh

man() {
    env LESS_TERMCAP_mb=$(tput bold; tput setaf 1) \
    LESS_TERMCAP_md=$(tput bold; tput setaf 4) \
    LESS_TERMCAP_me=$(tput sgr0) \
    LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4) \
    LESS_TERMCAP_se=$(tput rmso; tput sgr0) \
    LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) \
    LESS_TERMCAP_ue=$(tput rmul; tput sgr0) \
    LESS_TERMCAP_mr=$(tput rev) \
    LESS_TERMCAP_mh=$(tput dim) \
    LESS_TERMCAP_ZN=$(tput ssubm) \
    LESS_TERMCAP_ZV=$(tput rsubm) \
    LESS_TERMCAP_ZO=$(tput ssupm) \
    LESS_TERMCAP_ZW=$(tput rsupm) \
    man "$@"
}
