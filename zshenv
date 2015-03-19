# Set ruby gemset version control using rbenv
  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Set Paths
# ------------------------------------------------------------
  export PATH="$PATH:/usr/local/bin/"
  export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

  # Postgres
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# Set Default Editor (change 'Nano' to the editor of your choice)
# ------------------------------------------------------------
  export EDITOR=/usr/bin/vim

# Set default blocksize for ls, df, du
# from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
# ------------------------------------------------------------
  export BLOCKSIZE=1k

# Add color to terminal
# (this is all commented out as I use Mac Terminal Profiles)
# from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
# ------------------------------------------------------------
  export CLICOLOR=1
  export LSCOLORS=ExFxBxDxCxegedabagacad

# ---------------------------------------
# NODE AND NPM
# ---------------------------------------
  NPM_PACKAGES=/Users/kgan/.npm-packages
  NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
  PATH="$NPM_PACKAGES/bin:$PATH"

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

# colors!
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS="di=1;0;34:ln=0;35:so=32:pi=0;33:ex=0;31:bd=37;46:cd=37;43:su=37;41:sg=37;46:tw=37;42:ow=37;43:or=37;45:mi=37;43:"

if echo hello | grep --color=auto l >/dev/null 2>&1; then
  export GREP_OPTIONS='--color=auto'
  export GREP_COLOR='0;32'
  export GREP_COLORS="sl=0;37:cx=1;32:mt=1;35:fn=0;32:ln=1;34:se=1;33"
fi

# rbenv
eval "$(rbenv init -)"
