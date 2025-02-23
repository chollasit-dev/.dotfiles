# My Dotfiles

## Manual Configuration Guide

### Systemd

Enable **Systemd** by creating `wsl.conf` inside the target WSL distro.

```sh
sudo vim.tiny /etc/wsl.conf
```

Add this configuration to the file.

```conf
[boot]
systemd=true
```

Reference: [Microsoft dev blogs](https://devblogs.microsoft.com/commandline/systemd-support-is-now-available-in-wsl/)

### Wikiman

Run if not available in the default **apt** repo.

```sh
package="wikiman-2.13.2-1-any.deb"

wget "https://github.com/filiparag/wikiman/releases/download/2.13.2/$package" && \
sudo nala install "$package"

unset package
```

**Note:** check and change the version when needed.

Reference: [GitHub repository](https://github.com/filiparag/wikiman?tab=readme-ov-file#js-repo-pjax-container)
