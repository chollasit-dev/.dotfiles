#!/usr/bin/env bash

# In case command field under `/etc/wsl.conf` does not work.
if [ ! -e "${XDG_RUNTIME_DIR:=/run/user/$(id -u)}/${WAYLAND_DISPLAY}" ]; then
  ln -s "/mnt/wslg/runtime-dir/wayland-0" "$XDG_RUNTIME_DIR" && echo "Created Wayland socket symlink"
fi
