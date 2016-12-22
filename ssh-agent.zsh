typeset _ssh_env_cache

function _start_agent() {
	local lifetime
	local -a identities

	# start ssh-agent and setup environment
	zstyle -s :omz:plugins:ssh-agent lifetime lifetime

	ssh-agent -s ${lifetime:+-t} ${lifetime} | sed 's/^echo/#echo/' >! $_ssh_env_cache
	chmod 600 $_ssh_env_cache
	. $_ssh_env_cache > /dev/null

	# load identies
	zstyle -a :omz:plugins:ssh-agent identities identities

	echo starting ssh-agent...
	ssh-add $HOME/.ssh/${^identities}
}

# Get the filename to store/lookup the environment from
_ssh_env_cache="$HOME/.ssh/environment-$SHORT_HOST"

_start_agent

# tidy up after ourselves
unset _ssh_env_cache
unfunction _start_agent
