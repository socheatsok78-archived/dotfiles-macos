.PHONY: help

help:
	@echo "Help dotfiles-macos"
	@echo
	@echo "- install: Install all availble dependencies"

install-commons:
	@echo "macOS: Installing commons..."
	@brew bundle --file "Homebrew/commons.brewfile"

install-developments:
	@echo "macOS: Installing developments..."
	@brew bundle --file "Homebrew/developments.brewfile"
