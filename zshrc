# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
#alias tmux='TERM=xterm-256color tmux'
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell" # Flecha
# ZSH_THEME="geoffgarside" # hora y carpeta actual 1 linea
# ZSH_THEME="xiong-chiamiov-plus" # original doble linea 
# ZSH_THEME="xxf" # doble linea hora abajo
# ZSH_THEME="node" # minimalista icono de node
# ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
#DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case sensitive completion must be off. _ and -
# will be interchangeable
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1
export VISUAL="/usr/bin/nvim"
export EDITOR="/usr/bin/nvim"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$HOME/.npm-global/bin:$PATH
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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias yaourt="yaourt --color"
alias vim="nvim"
alias wds="webpack-dev-server"
alias lite="http-server -g"
alias update-mirrors="reflector --verbose --latest 10 --sort rate --save /etc/pacman.d/mirrorlist"
alias sudo="sudo "

# Añadir color a comando less
#export LESS='-R'
#export LESSOPEN='|~/.lessfilter %s'

# Añadir al PATH la ruta a los binarios de Ruby para desarrollo web
export PATH=$PATH:$HOME/.gem/ruby/2.3.0/bin

unset GREP_OPTIONS
[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux -2
#. /usr/share/zsh/site-contrib/powerline.zsh

# Tmux new session <name>
tmn() {
  [[ -z $TMUX ]] || {echo "You're already in tmux." && return 1}
  [[ -z $1 ]] && {echo "Use: tmn <name>" && return 1}
	if [ $1 = "-l" ]; then tmux list-sessions; return 0; fi
  tmux attach -t "$1" || tmux new -s "$1";
}

# source /usr/share/nvm/init-nvm.sh
#source /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
