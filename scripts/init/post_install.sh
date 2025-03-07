#!/usr/bin/env sh

# Initialize tldr.
if ! command -v tldr; then
    echo "Install tldr before proceed!"
elif [ -d "$HOME/.local/share/tldr" ]; then
    echo "tldr already initialized!"
else
    mkdir -p "$HOME/.local/share/tldr" && echo "tldr initialized success"
fi

# zsh
for file in \
    "$HOME/.dotfiles/.zshrc" \
    "$HOME/.dotfiles/.zprofile"; do
    if [ -f "$file" ]; then
        ln -s "$file" "$HOME/$file" &&
            echo "$file"
    fi
done
