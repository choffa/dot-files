export PATH=$HOME/bin:/usr/bin:/usr/local/bin:$PATH
eval "$(starship init zsh)"
eval "$(jenv init -)"


# If you come from bash you might have to change your $PATH.

# Path to your oh-my-zsh installation.
export ZSH="/Users/christopher/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
SHOW_AWS_PROMPT=false
plugins=(git gitignore zsh-nvm aws)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gtsc="gatsby clean"
alias gtsd="gatsby develop"
alias gtsb="gatsby build"
alias gtss="gatsby serve"
alias bash5="/usr/local/opt/bash/bin/bash"
alias activate="source env/bin/activate"

export PATH="$HOME/.yarn/bin:$PATH"

export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS:$PATH"

export PATH="$HOME/go/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
export PATH="/usr/local/opt/python@3.7/bin/:$PATH"
export SAM_CLI_TELEMETRY=0


export LANG=no_NO.UTF-8

# Openshift/Bastion Domstolene
alias ocp-prod="oc login https://api.cp.ads.domstol.no:6443/ -u adminek.cgj"
alias ocp-at="oc login https://api.cp.at.domstol.no:6443/ -u adminek.cgj"
alias ocp-test="oc login https://api.cp.test.domstol.no:6443/ -u adminek.cgj"

alias bastiontunell="sudo ssh -i /Users/christopher/.ssh/id_domstol_bastion -L 6443:api.cp.ads.domstol.no:6443 -L 443:console.apps.cp.ads.domstol.no:443 adminek.cgj@10.242.159.4"

alias kbinit="kubebuilder init --domain my-domain.no --repo github.com/user/repo --project-name my-operator"
alias kbrsrc="kubebuilder create api --group eksempel --version v1 --kind MyResource --resource --controller"

. "/Users/christopher/.deno/env"