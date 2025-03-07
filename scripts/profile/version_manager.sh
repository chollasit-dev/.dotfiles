# shellcheck disable=SC2148

FNM="/home/user/.local/share/fnm"
if [ -d "$FNM" ]; then
    export PATH="/home/user/.local/share/fnm:$PATH" &&
        eval "$(
            fnm env \
                --use-on-cd \
                --version-file-strategy=recursive \
                --corepack-enabled \
                --resolve-engines \
                --shell zsh
        )"
fi

UV="$HOME/.local/bin/env"
if command -v uv uvx >/dev/null 2>&1 && [ -f "$UV" ]; then
    # shellcheck source=/dev/null
    source "$UV"
fi

unset -v FNM UV
