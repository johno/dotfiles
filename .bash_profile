[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=$PATH:"/Applications/Postgres.app/Contents/Versions/9.3/bin:/Users/johno/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export NVM_DIR="/Users/johno/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

fpath=( "$HOME/.zfunctions" $fpath )
ln -sf ~/.pure.zsh ~/.zfunctions/prompt_pure_setup
ln -sf ~/.async.zsh ~/.zfunctions/async
autoload -U promptinit && promptinit
prompt pure
