setopt extendedglob
setopt LIST_TYPES

# If you come from bash you might have to change your $PATH.
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
# Go path.
export PATH="$HOME/go/bin:$HOME/bin:$PATH:/usr/local/go/bin"
# Neovim
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship-prompt/spaceship" # set by `omz`

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 15

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
COMPLETION_WAITING_DOTS="%F{yellow}Chill, bro...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    aliases
    # ansible
    # autoenv
    # autopep8
    # aws
    branch
    colored-man-pages
    colorize # Syntax highlighting for file contents supports over 300 languages.
    command-not-found
    common-aliases
    # composer
    copyfile
    copypath
    cp
    debian
    dircycle
    direnv
    docker
    docker-compose
    dotenv
    emoji-clock
    emoji
    emotty # Get return and use emoji in prompt.
    encode64
    # flutter
    fnm
    fzf
    # gcloud # Google Cloud SDK CLI
    gh
    git-auto-fetch
    git-commit
    git-prompt
    git
    github
    gitignore
    globalias
    golang
    gpg-agent
    history
    # homestead
    httpie
    ipfs
    isodate # ISO 8601 date format
    # jira
    jsontools
    # keychain # Setup and load selected both gpg and ssh.
    # kubectl
    # kubectx # Add kubectx_prompt_info() function to shown name of active kubectl context
    # laravel laravel4 laravel5
    lighthouse
    # mongo-atlas
    # mongocli
    # ng # Angular CLI
    # ngrok
    node
    nodenv
    npm
    # nvm
    otp # Create OTP with `oathtool`, kept in GPG-encrypted file
    pass
    # pep8
    perms # Quick UNIX file permissions manager
    pip
    pipenv
    pj  # Project jump
    pm2 # production-extended Nodemon
    # poetry # Auto change poetry environment based on `pyproject.toml`` for each directory.
    # poetry-env
    postgres
    pre-commit
    pylint
    python
    qrcode # Generate QR code via CLI using `QRcode.show` via cURL
    react-native
    redis-cli
    rsync # TODO
    safe-paste
    ssh-agent
    ssh
    # starship # Initialize starship prompt
    stripe
    sudo
    systemadmin
    systemd
    # terraform
    # thefuck
    themes
    tig # Useful Git aliases
    tldr
    tmux
    # transfer # CLI file sharing service
    # ubuntu
    ufw      # Uncomplicated Firewall
    urltools # Url encoder
    uv
    # vagrant-prompt
    # vagrant
    # vi-mode
    # vim-interaction # Interaction between shell and Vim itself
    vscode
    web-search # Search web via CLI
    yarn
    zsh-interactive-cd
    zsh-navigation-tools
    zoxide
)

# shellcheck source=/dev/null
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

DOTFILES="$HOME/.dotfiles"

_invoke_script() {
    if [ -f $1 ]; then
        # shellcheck source=/dev/null
        source "$1"
        if [ $? -eq 0 ]; then
            echo "Run $1"
        else
            echo "Failed to run $1"
        fi
    else
        echo "Cannot find $1"
    fi
}

CUSTOM_ALIASES="$DOTFILES/oh-my-zsh/aliases.zsh"
_invoke_script "$CUSTOM_ALIASES" && unset -v CUSTOM_ALIASES

VERSION_MANAGER="$DOTFILES/scripts/profile/version_manager.sh"
_invoke_script "$VERSION_MANAGER" && unset -v VERSION_MANAGER

UPDATE_SCRIPT="$DOTFILES/scripts/profile/update.sh"
_invoke_script "$UPDATE_SCRIPT" && unset -v UPDATE_SCRIPT

TASKWARRIOR="$DOTFILES/scripts/profile/taskwarrior.sh"
_invoke_script "$TASKWARRIOR" && unset -v TASKWARRIOR

CARAPACE="$DOTFILES/scripts/profile/carapace.sh"
_invoke_script "$CARAPACE" && unset -v CARAPACE

# ! ALWAYS LAST
SYNTAX_HIGHLIGHTING="$DOTFILES/scripts/profile/syntax_highlighting.zsh"
_invoke_script "$SYNTAX_HIGHLIGHTING" && unset -v SYNTAX_HIGHLIGHTING

unset -f _invoke_script
