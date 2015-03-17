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
