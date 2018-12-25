###### tags: `人工知能プログラミング`

# 実行環境について
# Lisp処理系 GCL
- GNU Common Lisp
	- Kyoto Common Lispを元に開発された。
# 処理系の起動と終了
- `gcl`と言うコマンドでインタラクティばシェルが立ち上がる。
- `(bye)`で終了。
- `(load "test.lsp")`で`test.lsp`と言うファイルを読み込んで、そこに定義してある関数などを使えるようになる。
- 日本語ファイルをutf-8でエンコードし直したい時、`nkf -w8 srcfile.lsp > dstfile.lsp`とする。
- `:bt`コマンドでバックトレース
- `:help`コマンドでデバッグモードのコマンド一覧を表示
- `(trace foo)`で`foo`の入出力地を表示する。
- `(untrace foo)`でトレース機能をオフにする
	- `(untrace)`とするとトレース中の全ての関数のトレースをオフにする。
