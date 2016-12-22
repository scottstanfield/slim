# vim: set ft=zsh tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab:

umask 022

slim_path=`dirname $0`
fpath=( $slim_path $fpath ~/slim/pure1)

autoload -U promptinit && promptinit
prompt pure1

autoload -U compinit
compinit


setopt autocd
setopt extendedglob
setopt NO_NOMATCH
unsetopt correct_all

# HISTORY
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups 
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history

COMPLETION_WAITING_DOTS="true"

source $slim_path/ssh-agent.zsh
source $slim_path/bindkeys.zsh
source $slim_path/completion.zsh
source $slim_path/stack.zsh
source $slim_path/alias.zsh
source $slim_path/functions.zsh
source $slim_path/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $slim_path/highlights.zsh




# untracked by git
if [[ -f $slim_path/etc.zsh.local ]]; then
  source $slim_path/etc.zsh.local
fi

