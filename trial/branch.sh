#!/bin/bash

# GitHubActions のためのテスト
# ブランチ名の一部を変数 GITHUB_ENV に格納する
GITHUB_HEAD_REF=release/TECHBLOG-22

echo ${GITHUB_HEAD_REF}

# これが欲しい物
echo ${GITHUB_HEAD_REF#*/} >> $GITHUB_ENV

echo $GITHUB_ENV

