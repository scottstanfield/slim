
function my_highlights {
	ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
	ZSH_HIGHLIGHT_PATTERNS+=('rm -rf' 'fg=white,bold,bg=red')
	ZSH_HIGHLIGHT_PATTERNS+=('sudo ' 'fg=white,bold,bg=red')
	ZSH_HIGHLIGHT_STYLES[path]=none
	ZSH_HIGHLIGHT_STYLES[builtin]=fg=blue
	ZSH_HIGHLIGHT_STYLES[command]=fg=blue
	ZSH_HIGHLIGHT_STYLES[alias]=fg=blue
	ZSH_HIGHLIGHT_STYLES[function]=fg=blue
}


my_highlights
