#!/usr/bin/env sh

sudo apt update &&
    sudo apt upgrade -y &&
    sudo apt install -y nala &&
    sudo nala install -y \
        zsh \
        zoxide \
        bat
# anacron

# Utilities
sudo nala install -y \
    tldr \
    tree \
    jq \
    yq \
    wget \
    curl \
    thefuck \
    fzf \
    tmux \
    pass \
    gmic \
    gimp gimp-gmic
# ripgrep # faster grep, default search hidden, respect .gitignore
# wikiman # TODO: Local fzf man pages, follow GitHub manual

# Devtools
sudo nala install -y \
    git \
    gh \
    direnv \
    python3 \
    python3-pip \
    python3-venv \
    nodejs \
    npm \
    nginx-extras \
    postgresql postgresql-contrib
# fnm # TODO: Rust based Node.js version manager, follow GitHub manual
# php
# php-xdebug
# composer

curl -fsSL https://fnm.vercel.app/install | zsh -s -- --skip-shell
