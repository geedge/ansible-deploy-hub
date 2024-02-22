#!/usr/bin/env bash

export MAIN_CLASS="com.zdjizhi.FileChunkCombiner"
export PARALLELISM="{{ flink.agg_traffic_file_chunk_combine['parallelism'] }}"
export TASK_MODE="{{ task_mode }}"

export FLINK_JOB_OPTS="
-Djobmanager.memory.process.size=1024m
{% for item in flink.agg_traffic_file_chunk_combine | dict2items %}
{% if item.key != 'parallelism' %}
-D{{ item.key }}={{ item.value }}
{% endif %}
{% endfor %}
"

