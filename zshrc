[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"

export PATH=$PATH:"$GOBIN:$HOME/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

alias gd="git diff"
alias "git?"="git status -s"
alias "g?"="git?"
alias grm="git rm"
alias gbv="git branch -v"
alias gcp="git cherry-pick"
alias ggpullur="git pull --rebase upstream master"
alias git-delete-merged="git branch --merged | grep -v \"\*\" | grep -v master | grep -v dev | xargs -n 1 git branch -d"
alias git-kick='git commit --amend --no-edit && git push -f'

alias c="clear"
alias lt="ls -t -r"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

bu () { cp $1 ~/.backup/`basename $1`-`date +%Y%m%d%H%M`.backup ; }
mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

alias slp='pmset sleepnow'
alias stayup='caffeinate -u -t 3600'

# https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

. ~/.z.sh
