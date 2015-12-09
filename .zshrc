export PATH=$PATH:"/Applications/Postgres.app/Contents/Versions/9.3/bin:/Users/johno/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export NVM_DIR="/Users/johno/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

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
