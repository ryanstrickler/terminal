# If you come from bash you might have to change your $PATH.
# export PATH=/usr/local/bin:$HOME/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ryan/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="cobalt2"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# Load omz.
source $ZSH/oh-my-zsh.sh

# Example aliases.
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Use Visual Studio Code as file editor.
export EDITOR='code --wait'

# Load rbenv.
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Load global ENV variables.
export $(egrep -v '^#' ~/.env | xargs)