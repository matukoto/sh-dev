#!/bin/bash


# 全文表示
# yq '.' wf.yaml

yq '.on.pull_request' wf.yaml

