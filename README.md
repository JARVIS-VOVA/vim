# Vim

## Quick Start

1. Clone .vim:

```
  git clone git@github.com:JARVIS-VOVA/vim.git ~/.vim
```

2. Clone Vundle:

```
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. .vimrc

```
  ln -s  ~/.vim/.vimrc ~/.vimrc
```

4. Open vim and run next command:

```
  :PlugInstall
```

5. Lists configured plugins

```
  :PluginList`
```

## Create macros
```
  q  # start recording
  l  # press any key
  write macros
  q  # end recording
  @l # use macros


  # List macros
  @l - console.log('')
  @p - 3.times { p 1 }
  @b - binding.pry
```

## Configure global gitignore
```
  git config --get core.excludesfile # check place file
  echo '*.swp' >> ~/.gitignore_global
  git config --global core.excludesfile '~/.gitignore'
```
