slim_path=`dirname $0`
fpath=( $slim_path $fpath ~/slim/pure1)

autoload -U promptinit && promptinit
prompt pure1

autoload -U compinit
compinit

setopt autocd
setopt extendedglob
setopt NO_NOMATCH

export CLICOLOR=1

source $slim_path/keys.zsh
source $slim_path/history.zsh
source $slim_path/completion.zsh
source $slim_path/stack.zsh
source $slim_path/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $slim_path/ls.zsh
source $slim_path/less.zsh
source $slim_path/myhighlights.zsh
source $slim_path/scott.zsh
source $slim_path/functions.zsh

if command -v fasd >/dev/null 2>&1; then
  eval "$(fasd --init zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install posix-alias)"
fi

# untracked by git
if [[ -f $slim_path/etc.zsh.local ]]; then
  source $slim_path/etc.zsh.local
fi
