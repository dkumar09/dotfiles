#!/usr/bin/env sh

# Create history file
HISTFOLDER="$HOME/.cache/zsh"
HISTFILE="$HISTFOLDER/history"

mkdir -p "$HISTFOLDER"
touch "$HISTFILE"

# change permission and ownership
chmod 600 "$HISTFILE"
chown "$(whoami)" "$HISTFILE"

stow tmux --target=$HOME
stow zsh --target=$HOME
stow script --target=$HOME
