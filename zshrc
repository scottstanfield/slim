# vim: set ft=zsh tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab:

umask 022

slim="${HOME}/slim"
fpath=( $slim $fpath ~/slim/pure1)

# load built-in modules
autoload -U colors     && colors
autoload -U promptinit && promptinit
autoload -U compinit   && compinit

# Use my Pure1 prompt
prompt pure1

setopt autocd
setopt extendedglob
setopt NO_NOMATCH
setopt interactive_comments  # allows these # comments in shell; good for copy/paste
setopt pushd_ignore_dups     # skip duplicate dirs when you usse pushd
setopt extended_glob		 # treat #, ~ and ^ as patterns for filename generation
setopt autopushd pushdminus pushdsilent pushdtohome
unsetopt correct_all

# HISTORY
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups 
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

COMPLETION_WAITING_DOTS="true"

source $slim/bindkeys.zsh
source $slim/completion.zsh
source $slim/alias.zsh
source $slim/functions.zsh
source $slim/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $slim/highlights.zsh


SSHPID=`ps ax|grep -c "[s]sh-agent"`
if (( $SSHPID == 0 ))
then
    ssh-agent > ~/.ssh-env
    source ~/.ssh-env
    ssh-add
else
    source ~/.ssh-env
fi


