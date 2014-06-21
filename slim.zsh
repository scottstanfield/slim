autoload -U promptinit && promptinit
prompt pure

autoload -U compinit
compinit

slim_path=`dirname $0`
source $slim_path/keys.zsh
source $slim_path/history.zsh
source $slim_path/completion.zsh

if command -v fasd >/dev/null 2>&1; then
  eval "$(fasd --init zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install posix-alias)"
fi

