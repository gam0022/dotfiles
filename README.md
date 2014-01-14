# dotfiles

- vim
- zsh


# 環境構築(共通)

ホームディレクトリ(~)直下に、dotfiles を clone します。


```
cd ~
git clone git@github.com:gam0022/dotfiles.git .
```


# 環境構築(zsh)

zsh のプラグインなどは、[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)で管理しています。

1. oh-my-zsh のインストール
2. `rm ~/.zshrc`
3. `ln -s dotfiles/.zshrc ~/.zshrc` 

で元通りになるはずです。


# 環境構築(Vim)

環境構築などについてメモします。

## Mac OS X

```
cd ~
ln -s dotfiles/.vimrc .vimrc

mkdir .vim
ln -s dotfiles/.vim/colors .vim/colors
ln -s dotfiles/.vim/userautoload .vim/userautoload
```

最後に MacVim を起動して、`:NeoBundleInstall` をします。


## Windoes

基本的にはMac同じです。

GVimでは、`~` が `C:\Users\<ユーザ名>` となるようです。

```
cd C:\Users\<ユーザ名>\
mklink dotfiles/.vimrc .vimrc

mkdir .vim
mklink /d dotfiles/.vim/colors .vim/colors
mklink /d dotfiles/.vim/userautoload .vim/userautoload
```

最後に GVim を起動して、`:NeoBundleInstall` をします。
