# BINDKEY 
bindkey -e								# Critical to make the normal movement keys work
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey "\e[3~" delete-char         	# DEL does the right thing
bindkey "\e[1;5D" backward-word     	# ⌃← skips back a word
bindkey "\e[1;5C" forward-word      	# ⌃→ skips forward a word
bindkey ' ' magic-space

# from original slim
# bindkey -e
# bindkey '\ew' kill-region
# bindkey -s '\el' "ls\n"
# bindkey '^r' history-incremental-search-backward
# bindkey "^[[5~" up-line-or-history
# bindkey "^[[6~" down-line-or-history
# bindkey '^[[A' up-line-or-search
# bindkey '^[[B' down-line-or-search
# bindkey "^[[H" beginning-of-line
# bindkey "^[[1~" beginning-of-line
# bindkey "^[OH" beginning-of-line
# bindkey "^[[4~" end-of-line
# bindkey "^[OF" end-of-line
# bindkey "^F" forward-word
# bindkey "^B" backward-word
# bindkey '^[[Z' reverse-menu-complete
# bindkey '^?' backward-delete-char
# bindkey "^[[3~" delete-char
# bindkey "^[3;5~" delete-char
# bindkey "\e[3~" delete-char

