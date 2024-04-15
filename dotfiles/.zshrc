export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(
  web-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# CUSTOM ALIASES

# Edit dotfiles
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

# Last command as sudo
alias fak='sudo $(fc -ln -1)'

# Folders navigation
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ~="cd ~"
alias -- -="cd -"  # last directory

# Git
alias ga="git add"
alias gaa="git add --all"
alias gst="git status"
alias gsb="git status --short -b"

# Custom functions

gall() {
  git add --all
  git commit -m "$1"
}

gpush() {
  git add --all
  git commit -m "$1"
  git push
}

gundo() {
    git reset HEAD~
}
