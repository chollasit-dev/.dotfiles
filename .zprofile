HISTORY_FILES=(
    "$HOME/.HISTFILE"
    "$HOME/.node_repl_history"
    "$HOME/.npm/_logs"
    "$HOME/.psql_history"
    "$HOME/.python_history"
    "$HOME/.ts_node_repl_history"
    "$HOME/.zsh_history"
)
for file in ${HISTORY_FILES[@]}; do
    [ -f "$file" ] && rm -f "$file" && echo "Removed $file"
done

# Monthly update
if [ "$(date +%-d)" = "15" ]; then
    UPDATE_LOG="$HOME/.update_logs"
    LAST_UPDATE_DATE=$(tail -n 1 "$UPDATE_LOG")
    CURRENT_DATE=$(date -I)

    [ ! -f "$UPDATE_LOG" ] && touch "$UPDATE_LOG"

    if [ ! "$LAST_UPDATE_DATE" = "$CURRENT_DATE" ]; then
        sudo nala upgrade -y &&
            sudo pnpm update -g &&
            chmod +w "$UPDATE_LOG"
        echo "$CURRENT_DATE" >>"$UPDATE_LOG"
    fi

    chmod -w "$UPDATE_LOG"
fi

unset -v HISTORY_FILES CURRENT_DATE APT_UPDATE_LOG APT_LAST_UPDATE_DATE
