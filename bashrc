[[ -f ~/.shellenv ]] && source ~/.shellenv

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.shellrc ]] && source ~/.shellrc

# Add tab completion for many Bash commands
[[ -f /etc/bash_completion ]] && source /etc/bash_completion

brew -v >/dev/null 2>&1 && \
	[ -f "$(brew --prefix)/etc/bash_completion" ] && \
	source "$(brew --prefix)/etc/bash_completion"

# Prompt
PS1="\[\033]0;\w\007\]";
PS1+="\n\[$(tput bold; tput setaf 12)\]\w\n";
PS1+="$(tput setaf 13)❯ $(tput sgr0)";
export PS1
