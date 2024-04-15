export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(
  git
  sudo
  web-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# CUSTOM ALIASES

# Edit dotfiles
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

# Git
alias gpush='git add . && git commit -m "$1" && git push'
