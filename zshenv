# ---------------------------------------
# PATHS
# ---------------------------------------
export MYBIN="$HOME/bin"
export BIN="/usr/local/bin"
export SBIN="/usr/local/sbin"
export NPM="/usr/local/bin/npm"
export HEROKU="/usr/local/heroku/bin"
export RBENV="$HOME/.rbenv/bin"
export PATH=$RBENV:$HEROKU:$NPM:$MYBIN:$BIN:$SBIN:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# env variables 
export PGHOST=localhost
export EDITOR="vim"
export TERM=xterm-256color

if echo hello | grep --color=auto l >/dev/null 2>&1; then
  export GREP_OPTIONS='--color=auto'
  export GREP_COLOR='0;32'
  export GREP_COLORS="sl=0;37:cx=1;32:mt=1;35:fn=0;32:ln=1;34:se=1;33"
fi

# rbenv
eval "$(rbenv init -)"
