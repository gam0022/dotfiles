# dotfiles

- vim
- zsh


## 環境構築(共通)

ホームディレクトリ直下に、dotfiles を clone します。

### Mac OS X

```bash
cd ~
git clone git@github.com:gam0022/dotfiles.git .
```

### Windows

Windows 環境でも git が必須になるため、[msysgit](http://msysgit.github.io/)をインストールします。

```bash
cd C:\Users\<ユーザ名>
git clone git@github.com:gam0022/dotfiles.git .
```


## 環境構築(zsh)

zsh のプラグインなどは、[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)で管理しています。

まず、公式ページを参照して、oh-my-zsh のインストールします。

```bash
rm ~/.zshrc
ln -s dotfiles/.zshrc ~/.zshrc
```

これだけでOKなはずです。


## 環境構築(Vim)

Vim については、Mac でも Windows でも両方で使えるような設定を目指しています。

まずは、[NeoBundle](https://github.com/Shougo/neobundle.vim) をインストールします。

### Mac OS X

```bash
cd ~
ln -s dotfiles/.vimrc .vimrc

mkdir .vim
ln -s dotfiles/.vim/colors .vim/colors
ln -s dotfiles/.vim/userautoload .vim/userautoload
```

```bash
cd ~
ln -s dotfiles/.vimrc .vimrc

mkdir .vim
cd .vim

mkdir userautoload
ln -s ~/dotfiles/.vim/userautoload/* userautoload

mkdir colors
ln -s ~/dotfiles/.vim/colors/* colors
```

最後に MacVim を起動して、`:NeoBundleInstall` をします。


### Windows

基本的にはMacと同じですが、`mklink`は`ln`と src と dst が逆なので注意が必要です。


GVimでは、`~` が `C:\Users\<ユーザ名>` となるようです。


```bash
cd C:\Users\<ユーザ名>\
mklink .vimrc dotfiles\.vimrc

mkdir .vim
mklink /d .vim\colors dotfiles\.vim\colors
mklink /d .vim\userautoload dotfiles\.vim\userautoload
```

最後に GVim を起動して、`:NeoBundleInstall` をします。
