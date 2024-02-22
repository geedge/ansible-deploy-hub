#!/bin/bash

base_dir=`dirname $0`
echo $base_dir

#router节点IP
router_ip=$1

common_task_name=`cat $base_dir/common_task.txt`
common_rule_file="$base_dir/common_data_rule.json"

hot_task_name=`cat $base_dir/hot_task.txt`
hot_rule_file="$base_dir/hot_data_rule.json"

for var in ${common_task_name[@]};
do
curl -X 'POST' -H 'Content-Type:application/json' -d @$common_rule_file http://${router_ip}:8089/druid/coordinator/v1/rules/${var}
echo "'${var}' 任务启动成功" 
sleep 2
done

for var in ${hot_task_name[@]};
do
curl -X 'POST' -H 'Content-Type:application/json' -d @$hot_rule_file http://${router_ip}:8089/druid/coordinator/v1/rules/${var}
echo "'${var}' 任务启动成功" 
sleep 2
done

