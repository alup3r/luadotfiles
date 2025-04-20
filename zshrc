# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="avit"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# fzf settings
source <(fzf --zsh)

# Path exports
export EDITOR="/usr/bin/nvim"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/usr/libexec"

# Vagrant exports
export VAGRANT_DEFAULT_PROVIDER=libvirt

# User configuration
set -o vi

# ALIASES
alias open="gio open"
alias lrt="ls -lhrt"
alias la="ls -la"
alias vim="/usr/bin/nvim"
alias g="/usr/bin/ghostty"
alias cdc="cd ~/Code/gitrepos/luadotfiles"
alias ipython="ipython --TerminalInteractiveShell.editing_mode=vi"
alias pd="/usr/bin/podman"
alias pdc="/usr/bin/podman-compose"
alias pbcopy="xclip -selection clipboard"
alias lz="/usr/bin/lazygit"
alias cat="/usr/bin/bat"
alias ls="/usr/bin/lsd"
alias help="/usr/bin/tldr"
