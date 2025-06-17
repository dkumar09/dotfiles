#!/usr/bin/env sh

# Create history file
HISTFOLDER="$HOME/.cache/zsh"
HISTFILE="$HISTFOLDER/history"

mkdir -p "$HISTFOLDER"
touch $HOME/.cache/zsh/history

# change permission and ownership
chmod 600 "$HISTFILE"
chown "$(whoami)" "$HISTFILE"

stow tmux
stow zsh
