setopt extendedglob

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$HOME/bin:$PATH:/usr/local/go/bin"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="fino-time"

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
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

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
COMPLETION_WAITING_DOTS="%F{yellow}chill, bro...%f"
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
    autopep8
    aws
    branch
    colored-man-pages
    colorize # Syntax highlighting for file contents supports over 300 languages.
    command-not-found
    common-aliases
    # composer
    debian
    direnv
    docker
    docker-compose
    # dotenv
    emoji-clock
    emoji
    emotty # Get return and use emoji in prompt.
    encode64
    # flutter
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
    # gpg-agent
    history
    hitokoto # Nice Chinese quote btw
    # homestead
    isodate # ISO 8601 date format
    # jira
    # keychain # Setup and load selected both gpg and ssh.
    # kubectl
    # kubectx # Add kubectx_prompt_info() function to shown name of active kubectl context
    # laravel laravel4 laravel5
    lighthouse
    # mongo-atlas
    # mongocli
    # ng # Angular CLI
    node
    nodenv
    npm
    # nvm # Node version manager
    # octozen # Nice startup quote from GitHub.
    otp # Create OTP using `oathtool`, kept in GPG-encrypted file.
    pep8
    perms # Handle UNIX file permissions quickly.
    pip
    pipenv
    pj  # Project jump
    pm2 # Nodemon extended for production.
    # poetry # Auto change poetry environment based on pyproject.toml in each directory.
    # poetry-env
    # postgres
    # pre-commit
    pylint
    python
    qrcode     # Generate QR code from CLI using QRcode.show via cURL
    rand-quote # Display random quotes from quotationspage.com
    react-native
    redis-cli
    rsync # TODO
    safe-paste
    ssh-agent
    ssh
    # starship # Initialize starship prompt
    stripe
    systemadmin
    # terraform
    # thefuck
    tig      # Aliases for  Git
    transfer # CLI file sharing service
    tmux
    # ubuntu
    ufw      # Everybody's favorite Uncomplicated Firewall
    # vagrant-prompt
    # vagrant
    vscode
    web-search # Alias for searching popular services.
    yarn
    zsh-interactive-cd
    zsh-navigation-tools
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
#   export EDITOR='nvim'
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

CUSTOM_ALIASES="$HOME/.oh-my-zsh/aliases.zsh"
if [ -f "$CUSTOM_ALIASES" ]; then
    # shellcheck source=/dev/null
    source "$CUSTOM_ALIASES" && echo "Loaded user aliases from $CUSTOM_ALIASES"
fi

if command -v thefuck >/dev/null 2>&1; then
    eval "$(thefuck --alias)"
fi
