#!/bin/bash

# 1
# xargs コマンドを引数に渡して実行してくれる
# 対象のファイル一覧 | ファイル名.png -> ファイル名 に置換 | 変換コマンド
time ls *.png | sed -E 's/.png$//' | xargs -I@ convert @.png @.jpg

# ちょっとあまりにも見当がつかなかったので､答え見ました｡
# sed -> Stream EDiter の略
# sed -E : 拡張正規表現を利用｡エスケープしなくていい｡
# アドレス､コマンド､コマンドパラメータの順

# 参考 [sed コマンド \| コマンドの使い方\(Linux\) \| hydroculのメモ](https://hydrocul.github.io/wiki/commands/sed.html)

# time 
# real, user, sys の3種類の時間が表示される｡ real が実際にかかった時間｡
# 上記の例では time は ls にかかっているので､ ls が始まっって終わるまでの時間を計測してくれる

# xargs -P2 で並列実行できる｡ cpu がもっとあれば -P7 とかできる｡
time ls *.png | sed 's/\.png$//' | xargs -P$(nproc) -I@ convert @.png @.jpg


# real    0m0.972s
# user    0m0.942s
# sys     0m0.255s
#
# -P2
# real    0m0.516s
# user    0m0.982s
# sys     0m0.234s
#
# -P7 
# real    0m0.234s
# user    0m1.405s
# sys     0m0.537s
#
# -P$(nproc) = -P20
# real    0m0.225s
# user    0m2.896s
# sys     0m1.161s
