# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/bwello/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Prompt customization
PROMPT='%F{red}%B%M%b%f %F{green}%.%f %F{red}>%f '
RPROMPT='%B%*%b'

# History search
unalias h 2>/dev/null
h() {
	local selected_command
	selected_command=$(fc -rl 1 | awk '{$1=""; print $0}' | fzf --height 40% --layout=reverse --border --prompt="History > ")
	if [[ -n "$selected_command" ]]; then
		print -z "$selected_command"
	fi
}

# Aliases
alias sacman="sudo pacman"
alias c="clear"
alias ll="ls -lh"
alias l="ls -lah"
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"
alias path='echo -e ${PATH//:/\\n}'
alias reload="source ~/.zshrc"
alias py="python"
alias ff="fastfetch"
alias v="nvim"
# Autoexec

fastfetch
