#!/usr/bin/env bash

export MAIN_CLASS="com.zdjizhi.topology.ApplicationProtocolTopology"
export PARALLELISM="{{ flink.agg_app_protocol_traffic['parallelism'] }}"
export TASK_MODE="{{ task_mode }}"

export FLINK_JOB_OPTS="
-Djobmanager.memory.process.size=1024m
{% for item in flink.agg_app_protocol_traffic | dict2items %}
{% if item.key != 'parallelism' %}
-D{{ item.key }}={{ item.value }}
{% endif %}
{% endfor %}
"
