[[ -f ~/.profile ]] && source ~/.profile
[[ -f ~/.shellrc ]] && source ~/.shellrc

# Add tab completion for many Bash commands
[[ -f /etc/bash_completion ]] && source /etc/bash_completion

brew -v >/dev/null 2>&1 && \
	[ -f "$(brew --prefix)/etc/bash_completion" ] && \
	source "$(brew --prefix)/etc/bash_completion"

[[ -f ~/.bash_prompt ]] && source ~/.bash_prompt
