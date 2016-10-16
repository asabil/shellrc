[[ -f ~/.shellrc ]] && source ~/.shellrc

ADOTDIR="$HOME/.zsh/antigen"
source ~/.zsh/antigen.zsh

bindkey -e

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen bundle git
antigen bundle node
antigen bundle npm
antigen bundle command-not-found

antigen apply