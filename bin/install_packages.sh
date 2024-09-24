#!/usr/bin/env sh

sudo apt update && sudo apt upgrade -y && sudo apt install -y nala &&
    # Built-in replacement
    # ripgrep # faster grep with default search hidden, respect .gitignore
    # anacron
    sudo nala install -y \
        zsh \
        zoxide \
        bat &&

    # Utilities
    sudo nala install -y \
        tldr \
        tree \
        jq \
        yq \
        wget \
        curl \
        fzf \
        tmux \
        pass \
        thefuck

# Miscellaneous
sudo nala install -y \
    toilet \
    chafa

# Devtools
sudo nala install -y \
    gh \
    python3 \
    python3-pip \
    python3-venv \
    nodejs \
    npm \
    direnv

if command -v tldr; then
    if [ ! -d "$HOME/.local/share/tldr" ]; then
        mkdir -p "$HOME/.local/share/tldr"
    fi
fi

NODE_VERSION=$(node -v)
sudo npm install -g n && sudo n lts
if [ "$(node -v)" != "$NODE_VERSION" ]; then
    hash -r # Clear hash table for executables
fi

sudo npm install -g @microsoft/inshellisense \
    yarn \
    pnpm \
    vercel
