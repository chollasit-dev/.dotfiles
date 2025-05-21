# My Dotfiles

## Manual Configuration Guide

### ZSH Syntax Highlighing

Since the creator/author recommended manual installation, let's start by
installing **zsh-syntax-highlighting** via package managers.

1. For **Debian** based, use **apt**.

```sh
sudo apt install -y zsh-syntax-highlighting
```

If not available, try cloning the git repo from source.

```sh
remote_repo="git@github.com:zsh-users/zsh-syntax-highlighting.git"
local_directory="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"

git clone --depth=1 "$remote_repo" "$local_directory"

unset -v remote_repo local_directory
```

After download the source, utilize the plugin by adding this to bottom of
`.zshrc`.

<!-- TODO: Check whether option 2 is corrected. -->

```sh
# Option 1: Installing via package manager.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Option 2: cloning from GitHub repository.
source "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
```

Reference:
[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

### Spaceship

Install 3rd-party minimal yet elegant theme.

```sh
remote_repo="https://github.com/spaceship-prompt/spaceship-prompt.git"
local_directory="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship-prompt"

git clone --depth=1 "$remote_repo" "$local_directory"

unset -v remote_repo local_directory
```

Create a symlink from custom plugin directory to the default directory for
`oh-my-zsh` to detect the plugin.

```sh
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

Reference:

- [Spaceship docs](https://spaceship-prompt.sh/config/intro/)
- [Spaceship GitHub repository](https://github.com/spaceship-prompt/spaceship-prompt)

### Wikiman

Run if not available in the default **apt** repo.

```sh
# Change the version as needed.
package="wikiman-2.13.2-1-any.deb"

wget "https://github.com/filiparag/wikiman/releases/download/2.13.2/$package" &&
  sudo apt install -y "$package"

unset -v package
```

Reference:
[Wikiman GitHub repository](https://github.com/filiparag/wikiman?tab=readme-ov-file#js-repo-pjax-container)

## Troubleshooting

### Systemd

Somehow, even **Systemd** is already support since 2022 (based on the blog
below). My Fresh default installation of a distro (Debian in my case), didn't
come with Systemd enabled out of the box, which I don't know why...

Therefore, enable **Systemd** by creating `wsl.conf` inside the target WSL
distro.

```sh
sudo vim.tiny /etc/wsl.conf
```

Add this configuration to the file.

```conf
[boot]
systemd=true
```

Reference:
[Microsoft dev blogs](https://devblogs.microsoft.com/commandline/systemd-support-is-now-available-in-wsl/)

### Wayland

**Issue**: Cannot connect to Wayland server when enabling **Systemd** for WSL.

This happened when the Wayland socket is not found. To fix this, create a
symlink.

```sh
ln -s "/mnt/wslg/runtime-dir/wayland-0" /run/user/$(id -u)/
```
