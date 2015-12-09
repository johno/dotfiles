source ~/.bash_profile

alias gd="git diff"
alias git?="git status -s"
alias grm="git rm"
alias gcp="git cherry-pick"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

bu () { cp $1 ~/.backup/`basename $1`-`date +%Y%m%d%H%M`.backup ; }
mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
