export LANGUAGE=en_US.UTF-8
export LANG="${LANGUAGE}"
export LC_ALL="${LANGUAGE}"
export LC_CTYPE="${LANGUAGE}"

# C compiler
# export CCFLAGS+=-O3
# export CFLAGS+=-O3
# export CC+=-O3

# PATH
export PATH=~/bin:"$PATH:."

# EDITOR nvim >> vim
command -v "nvim" &> /dev/null && vic="nvim" || vic="vim"
export EDITOR=${vic}

# LESS (is more)
export PAGER=less
less_options=(
    --quit-if-one-screen     # If the entire text fits on one screen, just show it and quit. (like cat)
    --no-init                # Do not clear the screen first.
    --ignore-case            # Like "smartcase" in Vim: ignore case unless the search pattern is mixed.
    --chop-long-lines        # Do not automatically wrap long lines.
    --RAW-CONTROL-CHARS      # Allow ANSI colour escapes, but no other escapes.
    --quiet                  # No bell when trying to scroll past the end of the buffer.
    --dumb                   # Do not complain when we are on a dumb terminal.
);
export LESS="${less_options[*]}";
unset less_options;
export LESSCHARSET='utf-8'

# LS
export BLOCK_SIZE="'1"
export LS_COLORS="no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:*.db=35:*.tmp=36:"
export LSCOLORS=exfxcxdxbxegedabagacad

# HISTORY
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=100000
export HISTCONTROL=ignoredups

[[ -f ~/.secret ]] && source ~/.secret

export MODEL=ocean2
export RADIUM=$HOME/e9/radium/out
export H2OSERVER=ss-imac.e9.ai
