#!/usr/bin/env bash

export MAIN_CLASS="com.galaxy.tsg.Toptask"

export PARALLELISM="{{ flink.agg_session_record_topn['parallelism'] }}"
export TASK_MODE="{{ task_mode }}"

export FLINK_JOB_OPTS="
-Djobmanager.memory.process.size=1024m
-Dtaskmanager.memory.process.size={{ flink.agg_session_record_topn['taskmanager.memory.process.size'] }}
-Dtaskmanager.numberOfTaskSlots={{ flink.agg_session_record_topn['taskmanager.numberOfTaskSlots'] }}
-Dtaskmanager.memory.framework.off-heap.size={{ flink.agg_session_record_topn['taskmanager.memory.framework.off-heap.size'] }}
"
