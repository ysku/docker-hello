## Docker Project with manifest list objects
### [Image Manifest V2](https://docs.docker.com/registry/spec/manifest-v2-2/)
- プラットフォーム固有のバージョンのイメージ用のイメージマニフェストを参照する `fat manifest` を利用して `multi-architecture images` を可能にする
- そのイメージのIDを生成するためにハッシュ化されたイメージ設定があるイメージモデルをサポートすることで、Docker Engine をアドレス可能なイメージに向けて移動させる

### Manifest List
- `manifest list` は１つ以上のプラットフォーム用の固有のイメージの manifest を参照する `fat manifest` である
- クライアントはHTTPレスポンス内で返却された Content-Type に基づいてイメージマニフェストを判別する

[*related api](https://docs.docker.com/registry/spec/api/)
