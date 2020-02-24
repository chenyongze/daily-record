#!/bin/bash
##########################################
# @Info gitbook 发布脚本 server
# @Author: yongze.chen
# @Date:   2020-02-24 10:01:45
###########################################

PUSH_SSH='root@114.215.24.34'
PUSH_ONLINE_DIST='/app/daily-record'

echo $(date)
WORKDIR=$(
    cd $(dirname $0)
    pwd
)
echo -e "\033[32m 当前目： ${WORKDIR} \033[0m"
UP_WORKDIR=$(
    cd ${WORKDIR}/../
    pwd
)
echo -e "\033[32m up-path： ${UP_WORKDIR}\033[0m"
cd ${UP_WORKDIR}

DIST_PATH=${UP_WORKDIR}

if [ ! -d ${DIST_PATH} ]; then
    npm run build:h5
fi

# EXCLUDE_FILE='--include _book/'

# 发布代码
echo -e "\033[34m
执行同步命令：
rsync -avz ${DIST_PATH}/_book ${EXCLUDE_FILE} ${PUSH_SSH}:${PUSH_ONLINE_DIST} 
\033[0m"

gitbook init
gitbook build

echo -e "\033[36m 同步代码开始..."
rsync -avz ${DIST_PATH}/_book ${EXCLUDE_FILE} ${PUSH_SSH}:${PUSH_ONLINE_DIST}
echo -e "\033[0m"
# 更改环境

if [ ! $1 ]; then
    echo "IS NULL"
else
    git add .
    git commit -m $1
    git push -u origin master
fi
exit
