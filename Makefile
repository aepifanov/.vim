
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


.PHONY: push
# target: push        - Push    VIM files update to repo.
push:
	git push git@github.com:aepifanov/.vim.git master
