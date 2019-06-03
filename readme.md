# README

my dotfiles and dockerfile

- .vim
    - vimのプラグインなど格納されているフォルダ
- .vimrc
    - vimの設定ファイル
- setup.sh
    - 初期設定用のシェルスクリプト
        - vundleのインストール
        - ホームディレクトリに".vim", ".vimrc"のシンボリックリンクを貼る
- init.vim
    - Onivimの設定ファイル(.vimrcに相当する)
- docker
    pyhton環境をdockerで構築する

    - setup_ubuntu
        - ubuntuをいれ，その中にpythonを整える
    - setup_python
        - Docker Hubからpythonを引っ張る方法
        - debianがついてくるみたいでaptなど使える
    
    ```
    $ # cd setup_ubuntu or setup_python
    $ # build
    $ sh setup.sh
    $ # sample run
    $ sh python_run.sh
    ```

