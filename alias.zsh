# neovim (nvim) >> vim >> vi
# $EDITOR is set in .zshenv
alias vi="$EDITOR -p"

if [[ $EDITOR == "nvim" ]] then
	alias vimrc="nvim ~/.config/nvim/init.vim" 
else
	alias vimrc="vim ~/.vimrc"
fi

# misc aliases
alias ag="ag --smart-case --literal "       
alias ,="cd .."
alias cp="cp -a"
alias grep='grep --color=auto'
alias hg="history -1000 | grep -i "
alias h="history"
alias m="less"
alias -- pd='pushd'
alias rm='nocorrect rm -vI'
alias soz="source ~/zclean/scott.zsh"
alias sz="source ~/.zshrc"
alias m="less"
alias dh='dirs -v'

####
# LS
# setopt extended_glob		 # treat #, ~ and ^ as patterns for filename generation
# Detect which 'ls' flavor to use
ls --color -d . &> /dev/null && color_ls=1 || color_ls=0

if [[ $color_ls ]] then 
    lsflag="--color --group-directories-first -F"   # GNU version
else 
    lsflag="-GF"   # for BSD / OSX version
fi

alias ls="command ls ${lsflag}"
alias ll="ls -l ${lsflag}"
alias la="ls -a ${lsflag}"
alias lla="ls -la ${lsflag}"

# Automatically ls after you change directories (cd).
# Comment out this function if it's annoying.
function chpwd() {
	emulate -L zsh
	ls
}




# GIT
alias gs='git status 2>/dev/null'
alias gd='git diff'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
function gg() { git commit -m "$*" }
#function gga() { echo "first: $@[1] \n rest: $@[2, -1]" }
function gga() { git add $@[1] && git commit -m "$*[2, -1]" }

# alias-like functions
function ff () { find . -iname "$1*" -print }
function ht() { (head $1 && echo "---" && tail $1) | less }
function monitor() { watch "clear; cat $1" }
function sst () {/usr/bin/ssh -t $@ "tmux attach || tmux new";}
function take () { mkdir -p $1 && cd $1 }
function zman() { PAGER="less -g -s '+/^       "$1"'" man zshall }

