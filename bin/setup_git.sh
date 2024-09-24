#!/usr/bin/env sh

# TODO: check if $USER match Windows username.
readonly WINUSER="USER"
for file in \
    ".gitconfig" \
    ".gitignore" \
    ".gitmessage"; do
    if [ -f "$HOME/$file" ]; then
        continue
    else
        if [ -f "/mnt/c/Users/$WINUSER/OneDrive/Documents/$file" ]; then
            ln -s "/mnt/c/Users/$WINUSER/OneDrive/Documents/$file" "$HOME/$file"
        fi
    fi
done
