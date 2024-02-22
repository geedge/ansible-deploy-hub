#!/usr/bin/env bash

export MAIN_CLASS="com.zdjizhi.main.DosDetectionApplication"
export PARALLELISM="{{ flink.detection_dos_attack['parallelism'] }}"
export TASK_MODE="{{ task_mode }}"


export FLINK_JOB_OPTS="
-Djobmanager.memory.process.size=1024m
{% for item in flink.detection_dos_attack | dict2items %}
{% if item.key != 'parallelism' %}
-D{{ item.key }}={{ item.value }}
{% endif %}
{% endfor %}
"

