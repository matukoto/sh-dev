#!/bin/bash

#1
# xargs コマンドを引数に渡して実行してくれる
# 対象のファイル一覧 | ファイル名(.より前) | 変換コマンド
ls *.png | sed -E 's/.png$//' | xargs -I@ convert @.png @.jpg
