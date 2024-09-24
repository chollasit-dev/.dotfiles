#!/usr/bin/env sh

# Initialize tldr.
! command -v tldr && echo "Install 'tldr' before proceed!" ||
    [ -d "$HOME/.local/share/tldr" ] && echo "tldr already initialized!" ||
    mkdir -p "$HOME/.local/share/tldr"

# Clone my dotfiles repository.
! command -v gh && echo "Install GitHub CLI before proceed!" ||
    [ ! -d "$HOME/.dotfiles" ] &&
    gh repo clone chollasit-dev/.dotfiles || echo ".dotfiles already exists!"

# ZSH related
for file in \
    "$HOME/.dotfiles/.zshrc" \
    "$HOME/.dotfiles/.zprofile"; do
    if [ -f "$file" ]; then
        ln -s "$file" "$HOME/$file" &&
            echo "$file"
    fi
done

# Prepare Shell Scripts for executing my machine setup process.
for file in \
    "$HOME/.dotfiles/bin/install_packages.sh" \
    "$HOME/.dotfiles/bin/setup_git.sh"; do
    chmod +x "$file" && echo "Change $file permissions to +x"
done
