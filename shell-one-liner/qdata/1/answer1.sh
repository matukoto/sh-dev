#!/bin/bash

#1
grep "exe" files.txt
printf "exeは探知できた\n"

#2
grep 'exe$' files.txt
printf "行末のexeは探知できるけど、_exeも探知してしまう\n"

#3
grep '.exe$' files.txt
printf ".は正規表現で任意の位置文字エスケープが必要\n"

#4
grep '\.exe$' files.txt
printf "正解\n"

# 別解
cat files.txt | grep '\.exe$'

cat files.txt | awk '/\.exe$/'

cat files.txt | sed -n '/\.exe$/p'
# -n 各行を自動的に出力しない
# 末尾の p は末尾に改行を付けて出力？
[メモ \- 出力 \- /sed/コマンド](https://memo.open-code.club/sed/%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89/%E5%87%BA%E5%8A%9B.html)
