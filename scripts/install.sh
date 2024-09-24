#!/usr/bin/env sh

sudo apt update &&
    sudo apt upgrade -y &&
    sudo apt install -y nala

# Built-in replacements
sudo nala install -y \
    anacron \
    bat \
    zoxide \
    zsh

# Utilities
sudo nala install -y \
    curl \
    ffmpeg \
    fzf \
    gimp \
    gimp-gmic \
    gmic \
    jq \
    netcat \
    pass \
    ripgrep \
    thefuck \
    tldr \
    tmux \
    tree \
    wget \
    wikiman \
    yq

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
