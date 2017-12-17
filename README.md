## Docker Project with manifest list objects
### [Image Manifest V2](https://docs.docker.com/registry/spec/manifest-v2-2/)
- プラットフォーム固有のバージョンのイメージ用のイメージマニフェストを参照する `fat manifest` を利用して `multi-architecture images` を可能にする
- そのイメージのIDを生成するためにハッシュ化されたイメージ設定があるイメージモデルをサポートすることで、Docker Engine をアドレス可能なイメージに向けて移動させる

### Manifest List
- `manifest list` は１つ以上のプラットフォーム用の固有のイメージの manifest を参照する `fat manifest` である
- クライアントはHTTPレスポンス内で返却された Content-Type に基づいてイメージマニフェストを判別する

[*related api](https://docs.docker.com/registry/spec/api/)

### [Manifest Tool](https://github.com/estesp/manifest-tool)
#### Installation
download from [here](https://github.com/estesp/manifest-tool/releases) and add execute permission.

#### Usage
**inspect**
```
manifest-tool inspect [image]
```

**create/push**
```
manifest-tool --username [username] \
              --password [password] \
              push \
              from-spec \
              hello.yaml

manifest-tool --username [username] \
              --password [password] \
              push \
              from-args \
              --platforms linux/amd64 \
              --template ysku/hello:latest \
              --target ysku/hello:amd64
```
