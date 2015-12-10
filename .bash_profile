[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export PATH=$PATH:"$HOME/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

fpath=( "$HOME/.zfunctions" $fpath )
ln -sf ~/.pure.zsh ~/.zfunctions/prompt_pure_setup
ln -sf ~/.async.zsh ~/.zfunctions/async
autoload -U promptinit && promptinit
prompt pure
