#!/bin/bash
source /etc/profile

# 任务jar所在目录
BASE_DIR="$(dirname "$(pwd)")"

SESSION_CLUSTER="Flink session cluster"

#Check the number of jar
if [ `ls ${BASE_DIR}/lib | grep jar | wc -l` -eq '1' ];then
  JAR_NAME=`ls ${BASE_DIR}/lib | grep jar`
else
  echo -e "\033[31;1m There are too many jars in the current directory. Keep the latest files! \033[0m"
  exit 1
fi

JAR_DIR=${BASE_DIR}/lib/${JAR_NAME}

CONFIG_PATH=${1:-$BASE_DIR/config/}

for file in $(ls "${CONFIG_PATH}"); do
if [ -f "$CONFIG_PATH/$file" ]; then
  TASK_NAME=${file}
  #Load job env
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
        flink run -t yarn-per-job ${FLINK_JOB_OPTS} -Dyarn.application.name=${TASK_NAME} -Dmetrics.reporter.promgateway.jobName=${TASK_NAME} \
		  -p ${PARALLELISM} -d -c ${MAIN_CLASS} ${JAR_DIR} ${CONFIG_PATH}/${TASK_NAME}
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
              flink run -t yarn-session -Dyarn.application.id=${SESSION_ID} \
                -p ${PARALLELISM} -d -c ${MAIN_CLASS} ${JAR_DIR} ${CONFIG_PATH}/${TASK_NAME}
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

