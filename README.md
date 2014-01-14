# dotfiles

- vim
- zsh


## 環境構築(共通)

ホームディレクトリ直下に、dotfiles を clone します。

Windows 環境でも git が必須になるため、[msysgit](http://msysgit.github.io/)をインストールします。

```
cd ~ # Mac の場合
cd C:\Users\<ユーザ名> # Windows の場合
git clone git@github.com:gam0022/dotfiles.git .
```


## 環境構築(zsh)

zsh のプラグインなどは、[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)で管理しています。

1. oh-my-zsh のインストール
2. `rm ~/.zshrc`
3. `ln -s dotfiles/.zshrc ~/.zshrc` 

で元通りになるはずです。


## 環境構築(Vim)

Vim については、Mac でも Windows でも両方で使えるような設定を目指しています。

### Mac OS X

```
cd ~
ln -s dotfiles/.vimrc .vimrc

mkdir .vim
ln -s dotfiles/.vim/colors .vim/colors
ln -s dotfiles/.vim/userautoload .vim/userautoload
```

最後に MacVim を起動して、`:NeoBundleInstall` をします。


### Windoes

基本的にはMacと同じです。

GVimでは、`~` が `C:\Users\<ユーザ名>` となるようです。

```
cd C:\Users\<ユーザ名>\
mklink dotfiles/.vimrc .vimrc

mkdir .vim
mklink /d dotfiles/.vim/colors .vim/colors
mklink /d dotfiles/.vim/userautoload .vim/userautoload
```

最後に GVim を起動して、`:NeoBundleInstall` をします。
