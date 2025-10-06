export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="eastwood"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

zstyle ':omz:update' frequency 30

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd.mm.yyyy"

plugins=(
	web-search
	bgnotify
	dirhistory
	sudo
	cp
	git
	z
	colored-man-pages
	zsh-autosuggestions
	zsh-completions
	fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

source ~/.zsh_aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

