# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
export EDITOR="/usr/bin/nvim"

# User configuration
set -o vi

# TMUXIFIER CONFIG
export PATH="$HOME/.tmuxifier/bin:$PATH"
alias tx="/Users/aluper/.tmuxifier/bin/tmuxifier"
alias tkill="tmux kill-session -t clouddesk"
alias tmx="tmuxifier load-session syseng"
# TMUXIFIER CONFIG

# ALIASES
alias lrt="ls -lhrt"
alias codecommit="cd ~/code/aws/codecommit/"
alias pk="pkill ssh"
alias vim="/usr/bin/nvim"
alias codebash="cd ~/Code/Sandbox/bash_labs/"
alias codeansible="cd ~/Code/ansible/ansible_labs/"
alias codepy="cd ~/Code/Python"
alias cdc="cd ~/Code/repos/luadotfiles"
alias cci="cd ~/Code/aws/codecommit"
alias tma="tmux attach-session -t 0"
alias cdkt="cd /Users/aluper/Code/aws/cdk_workshop/environments/typescript"
alias ipython="ipython --TerminalInteractiveShell.editing_mode=vi"

# export MANPATH="/usr/local/man:$MANPATH"
export PATH=$PATH:/Users/aluper/.local/bin
export PATH=$PATH:/Users/aluper/.ebcli-virtual-env/executables
