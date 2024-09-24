#!/usr/bin/env sh

cd "$HOME/.dotfiles" && echo "Changing directory to $HOME/.dotfiles" || exit

for file in "./.zshrc" \
    "./.zprofile"; do
    if [ -f "$file" ]; then
        ln -s "$file" "$HOME/$file" &&
            echo "$file"
    fi
done

for file in "./bin/install_packages.sh" \
    "./bin/setup_git.sh"; do
    chmod +x "$file" && echo "Change $file permissions to +x"
done
