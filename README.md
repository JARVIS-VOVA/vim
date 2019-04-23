# Vim

## Quick Start

1. Clone .vim:

```
  git clone https://github.com/galulex/vim.git ~/.vim
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
  q # start recording
  l # press any key
  console.log('') # write your command
  q # end recording

  @l # use macros
```
