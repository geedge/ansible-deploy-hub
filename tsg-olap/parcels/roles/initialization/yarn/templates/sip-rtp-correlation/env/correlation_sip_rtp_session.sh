#!/usr/bin/env bash

export MAIN_CLASS="com.zdjizhi.flink.voip.CorrelateApp"

export PARALLELISM="{{ flink.correlation_sip_rtp_session['parallelism'] }}"
export TASK_MODE="{{ task_mode }}"

export FLINK_JOB_OPTS="
-Djobmanager.memory.process.size=1024m
{% for item in flink.correlation_sip_rtp_session | dict2items %}
{% if item.key != 'parallelism' %}
-D{{ item.key }}={{ item.value }}
{% endif %}
{% endfor %}
"
