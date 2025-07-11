DOTFILES_DIR := $(HOME)/.dotfiles

.PHONY: copy install

copy:
	rsync -av --exclude='.git/' --exclude='makefile' --exclude='.gitignore' ./ $(DOTFILES_DIR)/

install: copy
	sudo nixos-rebuild switch