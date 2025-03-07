# shellcheck disable=SC2148

SYNTAX_HIGHLIGHTING="/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
if [ -f "$SYNTAX_HIGHLIGHTING" ]; then
    # shellcheck source=/dev/null
    source "$SYNTAX_HIGHLIGHTING"
fi

unset -v SYNTAX_HIGHLIGHTING
