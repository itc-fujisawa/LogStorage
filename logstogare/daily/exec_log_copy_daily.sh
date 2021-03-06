#!/bin/bash

#####################################################
# 名称       : exec_log_copy_daily.sh
# 処理名称   : サブシェルのlog_copy_daily.shを実行します。
#
########################################################

## ベースディレクトリ
BASE_DIR=/home/ment/logstogare/daily



## シェル名称
SHL_NM=exec_log_copy_daily.sh

##実行するシェル
EXEC_SHL_NM=log_copy_daily.sh

##実行シェルのログ
LOG_FILE=${BASE_DIR}/log_copy_daily.log

${BASE_DIR}/${EXEC_SHL_NM} >${LOG_FILE} 2>&1
EXITVALUE=$?
if [ $EXITVALUE != 0 ]; then
    /usr/bin/logger -t logrotate "log_copy_daily for logstorage SBT  exited error with [$EXITVALUE]"
fi
exit 0

