# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ad3m/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 15

COMPLETION_WAITING_DOTS="true"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions

)


source $ZSH/oh-my-zsh.sh

# User configuration
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"


source /opt/ros/noetic/setup.zsh
source ~/catkin_ws/devel/setup.zsh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

cd ~
