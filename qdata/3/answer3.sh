#!/bin/bash

# 問題環境作成
# mkdir ./tmp
# cd ./tmp
# time seq 100000 | xargs -P$(nproc) touch

# ファイルの桁数を7桁に揃える
# 変換前のファイル名 | 変換後のファイル名 | xargs -n2 mv を作れば良い

# だめだ､全く答えの見当がつかなかったので､答えみました｡
# 何故か実行しても成功しないんだが｡
time ls -U | xargs -P10 rename 's/^/000000/;s/0*([0-9]{7})/$1/'
# 別解
time ls -U | awk '{print $1, sprintf("%07d",$1)}' | xargs -n2 -P10 mv


