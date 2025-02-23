# Note

## Sudoers

Allow certain commands or scripts to elevate the privilege before run. The configuration can be done via `visudo` by running

```sh
sudo visudo
```

Then modify `sudoers.tmp

```tmp
your_username ALL=(ALL) NOPASSWD: /path/to/your/script.sh
```
