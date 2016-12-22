setopt interactive_comments  # allows these # comments in shell; good for copy/paste
setopt pushd_ignore_dups     # skip duplicate dirs when you usse pushd
setopt extended_glob		 # treat #, ~ and ^ as patterns for filename generation


# neovim (nvim) >> vim >> vi
# If nvim is installed, use that, otherwise vim. But alias vi to either.
#
command -v "nvim" &> /dev/null && vic="nvim" || vic="vim"
alias vi="${vic} -p"
export EDITOR=${vic}

if [[ $vic == "nvim" ]] then
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

