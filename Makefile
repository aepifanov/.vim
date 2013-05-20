
# Makefile for the management of configuration files.

GITHUB_REPO = git://github.com/aepifanov

.PHONY: help
help:
	@egrep "^# target:" [Mm]akefile



.PHONY: install
# target: install     - Install VIM files.
install: $(HOME)/.vimrc 

$(HOME)/.vimrc: $(HOME)/.vim
		ln -s $(HOME)/.vim/vimrc $@


.PHONY: update
# target: update      - Update  VIM files.
update:
	git pull $(GITHUB_REPO)/.vim.git master && git submodule update
