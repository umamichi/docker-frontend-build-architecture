# Dockerでフロントエンド開発環境を構築する

http://docs.docker.jp/engine/examples/nodejs_web_app.html

こちら参考にやってみたらハマるところ大量にあったのでメモ

## 準備

### Dockerのインストール

https://www.docker.com/

インストーラを使ってインストール

### 以下のようにファイルを準備する



## 以下を実行

### 1. ビルドする

```
$ docker build -t docker-test-name . 
```

`-t` オプションで名前をつけることができる

### 2. ビルド済みの `docker image` を表示

```
$ docker images
```

一覧が表示される

### 3. 実行

```
$ docker run -p 49160:8080 -d docker-test-name
```

`-p 49160:8080` でコンテナ内のプライベートなポート（=8080）を公開ポート（=49160）に渡し

`-d` でデタッチド・モード＝バックグラウンドで起動する

### 4. 起動済みのコンテナを表示

```
$ docker ps
```

`-a` で、停止中のコンテナも含めて、すべて表示する

```
$ docker ps -a
```

### 5. 起動中のコンテナのログを表示する

さきほど `docker ps` で表示したコンテナIDを使う

```
$ docker logs <CONTAINER ID>
```

↓このように表示されれば成功

```
Running on http://localhost:8080
``` 


### 6. ブラウザで http://localhost:49160 にアクセス

`Hello world` と表示されればOK

コンテナのポート8080と繋がったことになる

### 6. 停止する

```
$ docker ps
```

で、起動中のコンテナIDを調べ

```
$ docker stop <CONTAINER ID>
```

停止後は http://localhost:49160 にアクセスできなくなる





## 参考

http://docs.docker.jp/engine/examples/nodejs_web_app.html
