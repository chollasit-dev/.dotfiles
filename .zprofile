HISTORY_FILES=(
  "$HOME/.HISTFILE"
  "$HOME/.mongodb/mongosh/mongosh_repl_history"
  "$HOME/.mongodb/mongosh/{*_log,*_history}"
  "$HOME/.node_repl_history"
  "$HOME/.npm/_logs"
  "$HOME/.psql_history"
  "$HOME/.python_history"
  "$HOME/.sqlite_history"
  "$HOME/.tig_history"
  "$HOME/.ts_node_repl_history"
  "$HOME/.zsh_history"
)
for file in "${HISTORY_FILES[@]}"; do
  [ -f "$file" ] && rm -f "$file" && echo "Removed $file"
done

unset -v HISTORY_FILES

# Monthly update
CURRENT_DATE=$(date -I)
UPDATE_DATE="15"

if [ "$(date +%-d)" = "$UPDATE_DATE" ]; then
  APT_UPDATE_LOG="$HOME/.apt_update_logs"
  # Create `.apt_update_logs` file if it doesn't exist.
  [ ! -f "$APT_UPDATE_LOG" ] && touch "$APT_UPDATE_LOG" && chmod =r "$APT_UPDATE_LOG"

  APT_LAST_UPDATE_DATE=$(tail -n 1 "$APT_UPDATE_LOG")

  # Write success update log.
  if [ ! "$APT_LAST_UPDATE_DATE" = "$CURRENT_DATE" ]; then
    sudo nala upgrade -y &&
      chmod +w "$APT_UPDATE_LOG" &&
      echo "$CURRENT_DATE" >>"$APT_UPDATE_LOG" &&
      chmod -w "$APT_UPDATE_LOG"
  fi
fi

unset -v CURRENT_DATE UPDATE_DATE APT_UPDATE_LOG APT_LAST_UPDATE_DATE
