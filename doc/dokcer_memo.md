
# MacにDockerを入れてubuntuでpythonを実行するまで

あまりにも雑多なメモ，随時更新する

### 導入

[【最新版】DockerでUbuntu18.04を構築する方法](https://www.sejuku.net/blog/82240)

バージョンを指定してインストールできる

```
$ docker pull ubuntu:18.04
$ docker pull python:3.7
$ # 以下のコマンドでpullしたものを確認できる
$ docker images
```

出力としては以下のようなものが得られるはず

```
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ubuntu              18.04               7698f282e524        12 days ago         69.9MB
python              3.7                 a4cc999cf2aa        2 weeks ago         929MB
```

最終バージョンがとにかく欲しい場合は最後の数字を外す

```
$ docker pull ubuntu
$ docker pull python
$ # 以下のコマンドでpullしたものを確認できる
$ docker images
```

TAGの欄の文字列が"latest"になる

## コンテナとイメージの削除

[Dockerイメージとコンテナの削除方法](https://qiita.com/tifa2chan/items/e9aa408244687a63a0ae)

コンテナの削除（docker rm [コンテナID]）

```
$ # 以下のコマンドでコンテナのIDを調べる
$ docker ps -a
# CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
57ec96e331ea        ubuntu:18.04        "/bin/bash"         4 seconds ago       Up 2 seconds                            my-ubuntu
$ # IDを指定してコンテナを削除
$ docker rm 57ec96e331ea
$ # 確認
$ docker ps -a
```

イメージの削除（docker rmi [イメージID]）

```
$ # IDの確認をする
$ docker images
```

以下のような出力が得られる

```
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ubuntu              18.04               7698f282e524        12 days ago         69.9MB
```

削除

```
$ docker rmi 7698f282e524
```

### チュートリアル

[Docker Engine クイックスタート](http://docs.docker.jp/v1.11/engine/quickstart.html)

```
$ # インストールした Docker の正常動作を確認
$ # docker: command not found などがでなければOK
$ docker info
$ # ubuntuのbashを起動
$ docker run -i -t ubuntu /bin/bash
```

-i: 対話型 (interactive；インタラクティブ) のコンテナを起動
-t: 疑似ターミナル (pseudo-TTY) を起動し，stdin と stdout を接続

docker exec -it 


### python

[aaa](https://qiita.com/po3rin/items/45ba92e482efcf883325)

名前が同じでも良いみたい（混合しないためには違う名前にした方がいいのだろうけど）

```
$ # 実行
$ docker run -it --name py python /bin/bash
# cat /etc/os-release
```

抜け出すのはexitコマンド，これで停止するのでスタートをまたかけてあげる

```
$ # 停止したコンテナの開始
$ docker start py
```

```
$ # 再実行
$ docker exec -it py /bin/bash
```

ビルドのこと
https://qiita.com/YumaInaura/items/e7155b309e109bc75cf8

### --

[DockerのGUIアプリをMac OS上で表示する](http://mkawabe7.hatenablog.com/entry/2019/01/26/165122)

```
$ brew cask install xquartz
$ # XQuartzの立ち上げ
$ xquartz
```
XQuartzのアプリの環境設定を開き、「セキュリティ」タブの

「接続を認証」をOFF
「ネットワーク・クライアントからの接続を許可」をON
を設定する。接続後、XQuartzを再起動

