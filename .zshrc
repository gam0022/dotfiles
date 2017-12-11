#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# https://github.com/sorin-ionescu/prezto/issues/205
unalias rm

export PATH=$PATH:$HOME/.bin
alias ll='ls -alF'
alias l='ls'
alias sshe='cocot -t UTF-8 -p EUC-JP -- ssh' #EUC-JP環境にsshする

# http://jmblog.jp/archives/307
#export CLICOLOR=1
#export LSCOLORS=DxGxcxdxCxegedabagacad
#PS1='\[\033[36m\][\u@\h:\[\033[33m\]\w\[\033[36m\]]\[\033[0m\] \$ '
# http://helloworld.hifumi.info/post/22182948927/mac-octave
#export GNUTERM=X11

# http://www.coins.tsukuba.ac.jp/~fukui/CG/ex1.htm
alias  glcc='gcc -framework OpenGL -framework GLUT -framework Foundation "$@"'
alias  glg='g++ -framework OpenGL -framework GLUT -framework Foundation "$@"'

# java
alias javac='javac -J-Dfile.encoding=utf-8'
alias java='java -Dfile.encoding=utf-8'

# zshで右プロンプトを自動的に消す
setopt transient_rprompt

# OPAM configuration
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# eval "$(rbenv init - zsh)"
# eval "$(pyenv init -)"

export PATH=$PATH:/Applications/MacVim.app/Contents/bin
EDITOR=mvim

# Sublime Text 3
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# https://github.com/Homebrew/homebrew/issues/21920
export PGDATA=/usr/local/var/postgres

# LaTex
alias xbb='extractbb'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# git-tools
export PATH=$PATH:$HOME/lovelive-operations/git-tools

# c++11
alias cpp11='g++ -std=c++11'

# server
alias http-server='ruby -run -e httpd .'

# emscripten
export PATH=$PATH:$HOME/emsdk_portable/emscripten/1.35.0/

# mecab
export MECAB_PATH=/usr/lib/libmecab.so.2

# load klab.zshrc
. ~/.klab.zshrc

if (which zprof > /dev/null) ;then
  zprof
fi
