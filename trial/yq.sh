#!/bin/bash


# 全文表示
# yq '.' wf.yaml

yq '.on.pull_request' wf.yaml

2023-03-07
なんか知らんけど､ GitHubActions で yq が使えない｡
とてもムカつく｡原因が特定できない｡ありえん｡

uses: mikefarah/yq@master

として yq を使うと､引数に指定したファイルがないって言われる

sudo curl  ~
として yq を install しようとすると sudo command is not found と言われる
curl も notfound だったし｡どうすればいいのか皆目見当がつかない
