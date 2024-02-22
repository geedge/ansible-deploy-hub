#!/bin/bash

# flink任务停止脚本
source /etc/profile

BASE_DIR="$(dirname "$(pwd)")"
SESSION_CLUSTER="Flink session cluster"

function stopJob(){
TASK_NAME=$1
  if [ -f "$BASE_DIR/env/${TASK_NAME}.sh" ]; then
    # Promote all variable declarations to environment (exported) variables
    set -a
    . "$BASE_DIR/env/${TASK_NAME}.sh"
    set +a
  else
   exit 1
  fi

case ${TASK_MODE} in
  yarn-per-job)
    HAS_TASK=$(yarn application -list | grep "${TASK_NAME}" | wc -l)
    if [ ${HAS_TASK} -ne "0" ]; then
        SESSION_ID=$(yarn application -list | grep "${TASK_NAME}" | awk '{print $1}')
        yarn application -kill ${SESSION_ID}
    fi
    ;;
  yarn-session)
    SESSION_ID=$(yarn application -list | grep "$SESSION_CLUSTER" | awk '{print $1}')
    HAS_TASK=$(flink list -t yarn-session -Dyarn.application.id="${SESSION_ID}" | grep "${TASK_NAME}" | grep -v flink | wc -l)
    if [ -n ${SESSION_ID} ] && [ ${HAS_TASK} -ne "0" ]; then
        JOB_ID=$(flink list -t yarn-session -Dyarn.application.id="${SESSION_ID}" | grep -v flink | grep "${TASK_NAME}" | awk '{print $4}')
        flink cancel -t yarn-session -Dyarn.application.id=${SESSION_ID} ${JOB_ID}
    fi
    ;;
  *)
    echo "Invalid DEPLOYMENT_MODE. Choose from: standalone, yarn-per-job, yarn-session"
    exit 1
    ;;
esac
}

CONFIG_PATH=${1:-$BASE_DIR/config}

#如果是文件则停止一个任务
if [ -f "$CONFIG_PATH" ]; then
  stopJob $CONFIG_PATH
fi

#如果是文件夹则遍历停止
if [ -d "$CONFIG_PATH" ];then
  for file in $(ls "$CONFIG_PATH"); do
    stopJob $file
  done
fi

