[[ -f ~/.shellrc ]] && source ~/.shellrc

bindkey -e

source <(antibody init)

antibody bundle zsh-users/zsh-completions
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-history-substring-search
antibody bundle mafredri/zsh-async
antibody bundle sindresorhus/pure

## Completion

# Force rehash when command not found
_force_rehash() {
  (( CURRENT == 1 )) && rehash
  return 1
}

zstyle ':completion:*' completer _oldlist _expand _force_rehash _complete _match _ignored _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
zstyle ':completion:*' insert-tab pending
zstyle ':completion:*' menu select=2

autoload -Uz compinit
compinit -C

## History

if [ -z "$HISTFILE" ]; then
  HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000

# Show history
alias history='fc -l 1' ;

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data
