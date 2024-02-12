ZSH_THEME=powerlevel10k/powerlevel10k

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# This makes the oh-my-zsh script run twice when the shell is started.
# Not good but it works and we don't have to touch the default .zshrc file
# The idea being that you set some variables and then run the oh-my-zsh script.
source $ZSH/oh-my-zsh.sh