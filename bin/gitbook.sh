#!/bin/bash
##########################################
# @Info gitbook 发布脚本
# @Author: yongze.chen
# @Date:   2020-02-24 10:01:45
###########################################
git checkout master
git add .
git commit -m $1
git push -u origin master
git checkout pages
cp -r _book/* .
git add .
git commit -m $1
git push -u origin pages
git checkout master