# If you come from bash you might have to change your $PATH.
export PATH=$HOME/myscripts/bin:/usr/local/bin:$PATH

# Définie la taille de l'historique 
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
export HISTFILE="$HOME/.config/zsh/.zsh_history"


# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#fino.zsh-theme
#dst.zsh-theme
#pygmalion-virtualenv.zsh-theme
#tjkirch_mod.zsh-theme
#ys
ZSH_THEME="ys"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

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
ZSH_CUSTOM=~/.config/zsh/oh-my-zsh/custom

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages vi-mode history-substring-search zsh-syntax-highlighting)


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



#Personnal GitHub repository
#export _MYGIT=$HOME/skipping-school

#Dossier des notes
export _MYNOTES=$HOME/mynotes

#Dossier des scripts
export _MYSCRIPTS=$HOME/myscripts

#Dossier des librairies personnelles de bash
export _BASHLIB=$_MYSCRIPTS/library

#Réduit le délai pour la transition insert-normal mode
export KEYTIMEOUT=1



#Empêcher d'écraser un fichier avec '>'
#Pour écraser un fichier, utiliser '>|'
#Ne s'applique que pour les shells interactifs ( donc pas pour les scripts )
set -o noclobber

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias upbash="source $HOME/.zshrc && echo \"$HOME/.zshrc updated\""
alias grep="grep --color=auto"
alias pingem="ping 8.8.8.8"
alias poingem="pingem"
alias pingme="ping $(/sbin/ip route | awk '/default/ { print $3 }')"
alias poingme="pingme"
alias lookfor="history | grep --ignore-case"
alias lf="lookfor"
alias dusort="du -hs * | sort -h"
alias ds="dusort"
alias his="history | tail --line=20"
alias cd..="cd .."
alias co="cp -i"
alias mo="mv -i"
alias ctk="xmodmap $HOME/.config/custom_keyboard.conf"
#alias G="| grep -i" # Ne marche pas
#alias cp="cp -i" #N'est pas pris en compte, car l'alias cp est redéfinie par "nocorrect cp" à la ligne "source $ZSH/oh-my-zsh.sh". Cela est nécessaire pour l'auto correction de zsh
#alias mv="mv -i" #N'est pas pris en compte, car l'alias mv est redéfinie par "nocorrect mv" à la ligne "source $ZSH/oh-my-zsh.sh". Cela est nécessaire pour l'auto correction de zsh
alias printmycommand="ls -h $HOME/myscripts/bin"
alias atc="autoconnect"
alias aths="autosms '#hotspot on' && while true; do autoconnect The_Xperia_Melouki && exit; done"
alias athsset="autosms '#hotspot'"
alias y="youtube-dl"
alias bat="cat /sys/class/power_supply/BAT0/capacity"
alias sshagent="eval $(ssh-agent -s) ; ssh-add ~/.ssh/private_keys/github ; ssh -T git@github.com"


ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

#Active le mode vi de zsh
bindkey -v

# Better searching in command mode
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward

# Beginning search with arrow keys
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

#Map delete en mode normal sur la fonction delete
bindkey -a '^[[3~' delete-char
#Map delete en mode insert sur la fonction delete
bindkey '^[[3~' delete-char

# Updates editor information when the keymap changes.
# Indique <INSERT> ou <NORMAL>
# Doit être vers la fin du fichier pour fonctionner 
    function zle-keymap-select() {
      zle reset-prompt
      zle -R
    }

    zle -N zle-keymap-select

    function vi_mode_prompt_info() {
      echo "${${KEYMAP/vicmd/[% NORMAL]%}/(main|viins)/[% INSERT]%}"
    }
    # define right prompt, regardless of whether the theme defined it
    RPS1='$(vi_mode_prompt_info)'
    RPS2=$RPS1

#La ligne suivante permet de corriger un bug étrange, lorsque l'on arch-chroot via une connexion ssh.
#Risque potentiel de casser autre chose avec urxvt. Nécessite davantage de recherche.
#Sources : 
#http://www.faqs.org/docs/Linux-mini/BackspaceDelete.html
#https://askubuntu.com/questions/54145/how-to-fix-strange-backspace-behaviour-with-urxvt-zsh
#Recherche google : urxvt arch-chroot character won't delete
#TERM=xterm
#TERM=xterm-256color

