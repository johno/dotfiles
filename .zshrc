[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export PATH=$PATH:"$HOME/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

autoload -U promptinit && promptinit
prompt pure

alias gd="git diff"
alias git?="git status -s"
alias g?="git?"
alias grm="git rm"
alias gbv="git branch -v"
alias gcp="git cherry-pick"
alias ggpullur="git pull --rebase upstream master"
alias git-delete-merged="git branch --merged | grep -v \"\*\" | grep -v master | grep -v dev | xargs -n 1 git branch -d"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

bu () { cp $1 ~/.backup/`basename $1`-`date +%Y%m%d%H%M`.backup ; }
mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
