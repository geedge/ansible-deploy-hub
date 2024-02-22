#!/bin/bash

source /etc/profile

docker exec -i {{ container_name }} hbase shell <<EOF

create_namespace 'dos'
create_namespace 'tsg_galaxy'

create 'tsg_galaxy:saved_query_result', {NAME => 'response', VERSIONS => 1,COMPRESSION => 'GZ',IS_MOB => true, MOB_THRESHOLD => 0}, {NAME => 'detail',COMPRESSION => 'GZ',VERSIONS => 1}

create 'dos:ddos_traffic_baselines', 'TCP SYN Flood','UDP Flood','ICMP Flood','DNS Flood'


EOF
