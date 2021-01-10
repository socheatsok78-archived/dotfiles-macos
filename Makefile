.PHONY: help

help:
	@echo "dotfiles-macos's Help"
	@echo
	@echo "Commands:"
	@echo "- install: Install all base dependencies"
	@echo "- apps: Install apps dependencies"
	@echo "- virtuals: Install virtuals dependencies"
	@echo "- fonts: Install fonts dependencies"

install: install-commons install-developments install-tools
	# Installed recipes
	# - install-commons
	# - install-developments
	# - install-tools

install-commons:
	@echo "macOS: Installing commons..."
	@brew bundle --file "Homebrew/commons.brewfile"

install-developments:
	@echo "macOS: Installing developments..."
	@brew bundle --file "Homebrew/developments.brewfile"

install-tools:
	@echo "macOS: Installing tools..."
	@brew bundle --file "Homebrew/tools.brewfile"

apps:
	@echo "macOS: Installing apps..."
	@brew bundle --file "Caskbrew/apps.brewfile"

fonts:
	@echo "macOS: Installing fonts..."
	@brew bundle --file "Caskbrew/fonts.brewfile"