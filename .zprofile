readonly HISTORY_FILES=(
    "$HOME/.python_history"
    "$HOME/.node_repl_history"
    "$HOME/.HISTFILE"
    "$HOME/.zsh_history"
)
for file in ${HISTORY_FILES[@]}; do
    if [ -f "$file" ]; then
        rm -f "$file" && echo "$file removed!"
    fi
done

if [ "$(date +%-d)" = "1" ] || [ "$(date +%-d)" = "28" ]; then
    local NODE_VERSION=$(node -v)
    sudo nala upgrade -y && sudo n lts
    if [ "$(node -v)" != "$NODE_VERSION" ]; then
        hash -r # Clear hash table for executables
    fi
    sudo npm install -g npm@latest && sudo npm update -g
fi
