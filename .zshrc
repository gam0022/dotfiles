# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="gallois"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:$HOME/bin:/usr/local/bin:/usr/local/texlive/2013/bin/x86_64-darwin
alias ll='ls -alF'
alias l='ls'
alias sshe='cocot -t UTF-8 -p EUC-JP -- ssh' #EUC-JP環境にsshする

# http://jmblog.jp/archives/307
#export CLICOLOR=1
#export LSCOLORS=DxGxcxdxCxegedabagacad
#PS1='\[\033[36m\][\u@\h:\[\033[33m\]\w\[\033[36m\]]\[\033[0m\] \$ '
# http://helloworld.hifumi.info/post/22182948927/mac-octave
export GNUTERM=x11

# http://www.coins.tsukuba.ac.jp/~fukui/CG/ex1.htm
alias  glcc='gcc -framework OpenGL -framework GLUT -framework Foundation "$@"'
alias  glg='g++ -framework OpenGL -framework GLUT -framework Foundation "$@"'

# java
alias javac='javac -J-Dfile.encoding=utf-8'
alias java='java -Dfile.encoding=utf-8'

# zshで右プロンプトを自動的に消す
setopt transient_rprompt

# OPAM configuration
. /Users/gam0022/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
eval "$(rbenv init -)"

EDITOR=mvim
