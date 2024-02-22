#!/bin/bash

# flink任务停止脚本
source /etc/profile

# yarn-per-job, yarn-session

SESSION_CLUSTER="Flink session cluster"

CONFIG_PATH=${1:-$BASE_DIR/config/}

function stopJob() {
  TASK_NAME=$1
  
  case $TASK_MODE in
  yarn-per-job)
    HAS_TASK=$(yarn application -list | grep "$TASK_NAME" | wc -l)
    if [ $HAS_TASK -ne "0" ]; then
      SESSION_ID=$(yarn application -list | grep "$TASK_NAME" | awk '{print $1}')
      yarn application -kill $SESSION_ID
    fi
    ;;
  yarn-session)
    SESSION_ID=$(yarn application -list | grep "$SESSION_CLUSTER" | awk '{print $1}')
    HAS_TASK=$(flink list -t yarn-session -Dyarn.application.id="$SESSION_ID" | grep "$TASK_NAME" | grep -v flink | wc -l)
    if [ -n $SESSION_ID ] && [ $HAS_TASK -ne "0" ]; then
      JOB_ID=$(flink list -t yarn-session -Dyarn.application.id="$SESSION_ID" | grep -v flink | grep "$TASK_NAME" | awk '{print $4}')
      flink cancel -t yarn-session -Dyarn.application.id=$SESSION_ID $JOB_ID
    fi
    ;;
  *)
    echo "Invalid DEPLOYMENT_MODE. Choose from: standalone, yarn-per-job, yarn-session"
    exit 1
    ;;
  esac
}

#如果是文件则停止一个任务
if [ -f "$1" ]; then
  stopJob $1
fi

#如果是文件夹则遍历停止
if [ -d "$1" ]; then
  for file in $(ls "$1"); do
    stopJob $file
  done
fi


