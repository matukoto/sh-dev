#!/bin/bash

#1
# 今日も答えを見ました。
# grep を使えば OK 
grep -l '^10$' -R | xargs -I@ rm @ 
# これで行けると思ったけど、なぜかだめだ
# と思ったけど、やっぱOKだった

# これが正解
grep -l '^10$' -R | xargs rm

-l でファイル名のみを表示。
-R で再帰的にファイルを読み込む。
