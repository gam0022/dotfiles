# dotfiles

- vim
- zsh

## Requirements

- [Prezto](https://github.com/sorin-ionescu/prezto)
  - [Ricty for powerline](https://qiita.com/hoto17296/items/ccbd6b413e67a653f2df)
- [dein.vim](https://github.com/Shougo/dein.vim) into `~/.dein`

## Install (Mac)

```bash
# 任意のディレクトリにcloneします。Dropbox以下がオススメです
cd ~/Dropbox
git clone git@github.com:gam0022/dotfiles.git

# .で始まるファイルのシンボリックリンクをホームディレクトリ直下に作成します。
cd dotfiles
./setup.sh
```

## Install (Windows)

`setup.bat` を用意していないので、手動でシンボリックリンクを作成します。

基本的にはMacと同じですが、`mklink`は`ln`と src と dst が逆なので注意が必要です。


GVimでは、`~` が `C:\Users\<ユーザ名>` となるようです。


```bash
cd C:\Users\<ユーザ名>\
mklink .vimrc Dropbox\dotfiles\.vimrc
mklink /d .vim Dropbox\dotfiles\.vim
mklink /d .ssh  Dropbox\dotfiles\.ssh
```
