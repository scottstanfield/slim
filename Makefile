all: ~/.zshenv ~/.zshrc

~/.zshenv: zshenv
	@ln --backup --verbose --symbolic --force $(abspath $<) $@

~/.zshrc: zshrc
	@ln --backup --verbose --symbolic --force $(abspath $<) $@
