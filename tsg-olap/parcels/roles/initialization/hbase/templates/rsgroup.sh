#!/bin/bash

source /etc/profile

docker exec -i {{ container_name }} hbase shell <<EOF

add_rsgroup 'important'

move_servers_rsgroup 'important',['{{ hostname_master }}:16020']

move_servers_rsgroup 'important',['{{ hostname_slave }}:16020']

flush 'tsg_galaxy:saved_query_result'

move_tables_rsgroup 'important',['tsg_galaxy:saved_query_result']

EOF

