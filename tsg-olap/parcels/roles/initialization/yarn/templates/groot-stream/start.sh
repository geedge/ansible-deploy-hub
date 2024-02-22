#!/bin/bash
source /etc/profile

# 任务jar所在目录
BASE_DIR="$(dirname "$(pwd)")"

SESSION_CLUSTER="Flink session cluster"

ENV_DIR=$BASE_DIR/env/${TASK_NAME}.sh

CONFIG_PATH=${1:-$BASE_DIR/config/}

for file in $(ls "${CONFIG_PATH}"); do
  if [ -f "$CONFIG_PATH/$file" ]; then
    TASK_NAME=${file}
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
      HAS_TASK=$(yarn application -list | grep "$TASK_NAME" | wc -l)
      if [ ${HAS_TASK} -eq "0" ]; then
        $GROOT_HOME/bin/start.sh --target $TASK_MODE ${FLINK_JOB_OPTS} \
        -Dyarn.application.name=$TASK_NAME \
        -Dmetrics.reporter.promgateway.jobName=$TASK_NAME \
        -p $PARALLELISM -d -c $CONFIG_PATH/$TASK_NAME
        
        echo -e "\033[32;1m ${TASK_NAME} job started. \033[0m"
      else
      	echo -e "\033[31;1m ${TASK_NAME} job started,Do not submit tasks repeatedly! \033[0m"
      fi
      ;;
    yarn-session)
      HAS_SESSION=$(yarn application -list | grep "${SESSION_CLUSTER}" | wc -l)
      if [ ${HAS_SESSION} -ne '0' ]; then
      	SESSION_ID=$(yarn application -list | grep "${SESSION_CLUSTER}" | awk '{print $1}')
      	HAS_TASK=$(flink list -t yarn-session -Dyarn.application.id="${SESSION_ID}" | grep "${TASK_NAME}" | grep -v flink | wc -l)
      	if [ -n "${SESSION_ID}" ] && [ ${HAS_TASK} -eq "0" ]; then
      	  $GROOT_HOME/bin/start.sh --target $TASK_MODE -Dyarn.application.id=${SESSION_ID} \
      	  -p ${PARALLELISM} -d -c ${CONFIG_PATH}/${TASK_NAME} -n ${TASK_NAME}
          
      	  echo -e "\033[32;1m ${TASK_NAME} job started. \033[0m"
      	else
      	  echo -e "\033[31;1m ${TASK_NAME} job started,Do not submit tasks repeatedly! \033[0m"
      	fi
      else
      	echo -e "\033[31;1m Check whether the $SESSION_CLUSTER container is not found in the Yarn cluster. \033[0m"
      fi
      ;;
    *)
      echo "Invalid DEPLOYMENT_MODE. Choose from: standalone, standalone-docker, yarn-per-job, yarn-session"
      exit 1
      ;;
    esac
  fi
done


