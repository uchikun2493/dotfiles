# setup

## setup.sh

## setup_oni.sh

Onivimの設定ファイルである"init.vim"は本来"~/.config/nvim/init.vim"に存在している

"~/dotfiles"で管理するために，"~/dotfiles/init.vim"を作成し，シンボリックリンクを作成する

```
#!/bin/sh
ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim
```

実行は以下の通り

```
$ sh setup_oni.sh
```