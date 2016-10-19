
# Makefile for the management of configuration files.

GITHUB_REPO = git://github.com/aepifanov
VUNDLE_REPO = https://github.com/gmarik/Vundle.vim.git

.PHONY: help
help:
	@egrep "^# target:" [Mm]akefile



.PHONY: install
# target: install     - Install VIM files.
install: $(HOME)/.vimrc \
	     $(HOME)/.vim/bundle/vundle

$(HOME)/.vimrc:
		ln -s $(HOME)/.vim/vimrc $@

$(HOME)/.vim/bundle/vundle:
	git clone $(VUNDLE_REPO) bundle/Vundle.vim
	vim +PluginInstall +qall

# go get -u github.com/jstemmer/gotags
