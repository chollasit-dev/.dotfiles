# shellcheck disable=SC2148

UPDATE_DATE=15
PNPM_GLOBAL_PACKAGES=(
  @nestjs/cli
  @sourcegraph/cli
  degit
  live-server
  mongosh
  ngrok
  tsx
  vercel
)
PNPM_HOME_PACKAGES=(
  prettier-plugin-css-order
  prettier-plugin-organize-attributes
  prettier-plugin-organize-imports
  prettier-plugin-packagejson
  prettier-plugin-jsdoc
  prettier-plugin-tailwindcss
)

export PNPM_HOME="/home/user/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
if command -v fnm &>/dev/null; then
  NODE_VERSION_PATH="$HOME/.node-version"
  NODE_LTS_VERSION=$(fnm ls-remote --lts --latest | sed 's/ .*$//')

  # Create `.node-version` file if it doesn't exist.
  [ ! -f "$NODE_VERSION_PATH" ] && echo "$NODE_LTS_VERSION" >"$NODE_VERSION_PATH"

  # Update all `npm` and `pip` packages
  if [ "$(date +%-d)" = "$UPDATE_DATE" ]; then
    NPM_UPDATE_LOG="$HOME/.npm_update_logs"
    # Create `.npm_update_logs` file if it doesn't exist.
    [ ! -f "$NPM_UPDATE_LOG" ] && touch "$NPM_UPDATE_LOG" && chmod a=r "$NPM_UPDATE_LOG"

    NPM_LAST_UPDATE_DATE=$(tail -n 1 "$NPM_UPDATE_LOG")

    if [ ! "$NPM_LAST_UPDATE_DATE" = "$CURRENT_DATE" ]; then
      command -v yarn &>/dev/null &&
        corepack install -g yarn &&
        corepack enable yarn

      command -v pnpm &>/dev/null &&
        corepack install -g pnpm@latest &&
        corepack enable pnpm &&
        pnpm add -g "${PNPM_GLOBAL_PACKAGES[@]}" &&
        cd "$HOME" && pnpm add "${PNPM_HOME_PACKAGES[@]}"

      command -v uv &>/dev/null && uv self update

      # Write success update log.
      chmod +w "$NPM_UPDATE_LOG" &&
        echo "$CURRENT_DATE" >>"$NPM_UPDATE_LOG" &&
        chmod -w "$NPM_UPDATE_LOG"
    fi
  fi

  # Update Node to latest LTS version if available.
  NODE_CURRENT_VERSION=$(node -v 2>/dev/null)
  if [ "$NODE_CURRENT_VERSION" != "$NODE_LTS_VERSION" ]; then
    fnm install "$NODE_LTS_VERSION" &&
      echo "$NODE_LTS_VERSION" >"$NODE_VERSION_PATH"
  fi
fi

unset -v NODE_CURRENT_VERSION NODE_LTS_VERSION NODE_VERSION_PATH NPM_LAST_UPDATE_DATE NPM_UPDATE_LOG PNPM_GLOBAL_PACKAGES UPDATE_DATE
