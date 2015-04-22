# dotfiles

This is my configuration files from my $HOME directory. :dancer:

## Introduction

This is my repository containing some configuration files that I use on my *nix systems. Since this is to be used by myself, I sometimes hardcode strings (like my name/e-mail on my .gitconfig file), so this repo probably shouldn't be used by you without modifications.

## Dependencies

This repository includes configuration files for the following programs (so you need them installed to use this repo). You can, of course, install only the things you want/need, but you will need to copy/link the files/folders in "()" to make it work:

 * vim/gvim (.vim/.vimrc/.gvimrc)
 * zsh (.zshrc/.zsh/{oh-my-zsh/zsh-syntax-highlighting/zsh-completions})

Of course you need Git too ;) . If you do want to use my .gitconfig, don't forget to change the e-mail and name, unless you want to commit things with my name.

## Installation

Thanks to Dotbot it's very easy to use this repository. Simple clone this repo and execute the install script (you need Python 2/3 installed in your system)

```
  $ ./install
```

If vim +PluginInstall fails +qall you can open vim and execute this command:

```
  :PluginInstall
```

on Vim command mode to install all plugins. There is no need to do something similar to Oh-My-Zsh or Package Control since they're self contained.


## Modifications

Since I work with a lot of vm's I wanted to have an option by which you can choose the yaml file you want to read/execute. Many thanks to dotbot's @anishathalye
for suggesting me an awesome solution.
