# zsh-completions
if type brew &>/dev/null; then
 FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
 source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
 autoload -Uz compinit
 compinit
fi

# prompt
function parse_git_branch() {
  git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
setopt PROMPT_SUBST
autoload -Uz colors && colors
export PROMPT='%F{009}%~%f%F{033}$(parse_git_branch)%f$ '

# aliases
alias l='ls -1'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias sl='ls'

alias g='cd $(ghq list --full-path | peco)'
alias tf='terraform'
alias k='kubectl'
alias kcuc='kubectl config use-context'

alias treeyml='find . -type f -exec echo - {} \;'

# kubectl
source <(kubectl completion zsh)

