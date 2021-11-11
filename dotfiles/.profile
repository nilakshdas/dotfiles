#!/usr/bin/env bash

DOTFILES_DIR="$HOME/dotfiles"

export PATH="$DOTFILES_DIR/bin:$PATH"

[ -f "$HOME/.bash_prompt" ] && source "$HOME/.bash_prompt"
