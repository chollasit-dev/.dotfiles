#!/usr/bin/env bash

share_packages=(
    bat
    carapace-bin
    direnv
    ffmpeg
    fzf
    gh
    git
    imagemagick
    jq
    pass
    ripgrep
    tig
    tldr
    tree
    unzip
    wget
    wikiman
    yq
    zip
    zoxide
    zsh
)

debian_packages=(
    dotenv
    nodejs
    npm
    python3
    python3-pip
    python3-venv
    wl-clipboard
    stow
)

sudo apt update &&
    sudo apt upgrade -y &&
    sudo apt install -y nala &&
    sudo nala install -y "${share_packages[@]}" "${debian_packages[@]}" && echo "Install Debian packages success"

# fnm
if command -v curl &>/dev/null && command -v unzip &>/dev/null; then
    curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell && echo "Install fnm success"
fi

# uv
# TODO: Update Python version to LTS version when needed.
curl -fsSL https://astral.sh/uv/install.sh | sh
if ! command -v posting; then
    uv tool install --python 3.12 posting && echo "Install posting success"
fi

unset -v share_packages debian_packages && echo "share_packages and debian_packages arrays unsetted"
