#!/usr/bin/env bash

export PARALLELISM="{{ flink.etl_transaction_record_kafka_to_clickhouse['parallelism'] }}"

export TASK_MODE="{{ task_mode }}"

export FLINK_JOB_OPTS="
-Djobmanager.memory.process.size=1024m
{% for item in flink.etl_transaction_record_kafka_to_clickhouse | dict2items %}
{% if item.key != 'parallelism' %}
-D{{ item.key }}={{ item.value }}
{% endif %}
{% endfor %}
"

