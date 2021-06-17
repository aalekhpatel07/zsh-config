# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/aalekh/.oh-my-zsh"
export MYNVIMRC="$HOME/.config/nvim/vim.init"
export I3RS_GITHUB_TOKEN="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"

# The postgreSQL cli tool to enter any database.
alias posqlserverstart="brew services start postgresql"
alias posqlserverstop="brew services stop postgresql"
export POSTGRES_HOST="127.0.0.1"
export POSTGRES_PORT="1337"
export POSTGRES_USER="postgres"

# Must specify the database name at the end.
alias posql="$HOME/../../Library/PostgreSQL/12/bin/psql -h $POSTGRES_HOST -p $POSTGRES_PORT -U $POSTGRES_USER"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="gnzh"
ZSH_THEME="powerlevel10k/powerlevel10k"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	docker
	docker-compose
	history-substring-search
	copydir
	osx
	vi-mode
	vscode
	npm
	npx
	node
	jsontools
	jira
	extract
	copyfile
	common-aliases
	brew
	web-search
	z
	zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

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
setopt CSH_NULL_GLOB
unsetopt correct_all

alias pysv="python -m http.server"
alias nv="nvim"
alias sin="svn info"
alias fls="du --max-depth=1 -ah | sort -hr"
alias controls="gnome-control-center"
alias cpct="xclip -sel c"
alias pbcopy="cpct"
alias psv="python3 -m http.server"
alias iopen="python3 -m webbrowser -n"
alias sst="svn status"
alias supd="svn update"
alias getme="sudo dnf install"
alias doggo="pygmentize"
alias rm="rm"
alias -s pdf=preview
alias af="alias | rg"
alias please="sudo"
alias safari="open -a Safari.app"
alias ngc="ng g c --skipTests=true"
alias ngs="ng g s --skipTests=true"
alias ngserve="ng serve -o --host 192.168.0.17"
alias chrome="open -a Google\ Chrome.app"
alias fox="open -a Firefox-Developer-Edition.app"
alias ngdocs="chrome https://angular.io/guide/architecture"
alias reactdocs="chrome https://reactjs.org/docs/getting-started.html#learn-react"
alias wolfram="chrome https://www.wolframalpha.com"
alias ghub="chrome https://github.com"
alias gsm="git switch master"
alias gs="git switch"
alias gsp="git stash pop"
alias glone="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias pydocs="chrome https://docs.python.org/3/"
alias w3s="chrome https://www.w3schools.com"
alias google="chrome https://www.google.com"
alias gconsole="chrome 'https://console.cloud.google.com/home/dashboard?project=academic-portfolio-285504&_ga=2.199856169.643783687.1598764136-857879551.1598764136&pli=1'"
alias gsource="chrome 'https://source.cloud.google.com/academic-portfolio-285504?project=academic-portfolio-285504&_ga=2.241768267.-857879551.1598764136'"
alias jira="chrome 'https://acadfolio.atlassian.net/secure/BrowseProjects.jspa?=&selectedProjectType=software'"
alias angulardev="chrome http://192.168.0.17:4200"
alias angularlocal="chrome http://127.0.0.1:4200"
alias devdjadmin="chrome http://192.168.0.17:8000/admin"
alias localdjadmin="chrome http://127.0.0.1:8000/admin"
alias nexus="chrome https://nexus.uwinnipeg.ca/d2l/login"
alias power="pmset -g batt"
alias howhot="sudo powermetrics --samplers smc | grep -i 'CPU die temperature'"
alias lookfor='grep -rnwl "./" -e'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias tell="osascript ~/.sendMessage.applescript"
alias g='googler -n 10 -c en -l en'
alias vid='googler -V'
alias ccat='pygmentize -g'
alias cl="clear"
# Work stuff
alias ic="invoke3 compose"
alias icps="invoke3 compose \"ps\""
alias icdn="invoke3 compose \"down\""
alias icup="invoke3 compose \"up -d\""
alias sd="svn diff --summarize ^branches/cassandra"
alias dr="docker run"
alias idev="invoke3 dev"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/aalekh/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
