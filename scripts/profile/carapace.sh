# shellcheck disable=SC2148

export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense'

# Initialize completion.
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
# shellcheck source=/dev/null
source <(carapace _carapace)

# Group order.
zstyle ':completion:*:git:*' group-order 'main commands' 'alias commands' 'external commands'
