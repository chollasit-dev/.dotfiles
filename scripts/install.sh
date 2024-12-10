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
# php
# php-xdebug
# composer

# fnm
curl -fsSL https://fnm.vercel.app/install | zsh -s -- --skip-shell

# uv
# TODO: Update Python version to LTS version when needed.
curl -fsSL https://astral.sh/uv/install.sh | sh
uv tool install --python 3.12 posting # install Python if needed
