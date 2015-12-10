source ~/.bash_profile

alias gd="git diff"
alias git?="git status -s"
alias grm="git rm"
alias gbv="git branch -v"
alias gcp="git cherry-pick"
alias git-delete-merged="git branch --merged | grep -v \"\*\" | grep -v master | grep -v dev | xargs -n 1 git branch -d"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

bu () { cp $1 ~/.backup/`basename $1`-`date +%Y%m%d%H%M`.backup ; }
mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
