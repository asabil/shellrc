ADOTDIR="$HOME/.zsh/antigen"
source "$HOME/.zsh/antigen.zsh"

bindkey -e

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle sindresorhus/pure

antigen bundle git
antigen bundle node
antigen bundle npm
antigen bundle command-not-found

antigen apply
