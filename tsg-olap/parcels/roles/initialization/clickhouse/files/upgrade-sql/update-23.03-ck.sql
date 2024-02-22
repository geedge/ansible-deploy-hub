set distributed_ddl_task_timeout = 180;

alter table system.query_log on cluster ck_cluster modify TTL event_date + INTERVAL 60 DAY;


alter table tsg_galaxy_v3.session_record_local on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64 MATERIALIZED toUnixTimestamp(now()) after common_processing_time;
alter table tsg_galaxy_v3.session_record on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;
alter table tsg_galaxy_v3.session_record on cluster ck_query add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;


alter table tsg_galaxy_v3.interim_session_record_local on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64 MATERIALIZED toUnixTimestamp(now()) after common_processing_time;
alter table tsg_galaxy_v3.interim_session_record on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;
alter table tsg_galaxy_v3.interim_session_record on cluster ck_query add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;


alter table tsg_galaxy_v3.transaction_record_local on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64 MATERIALIZED toUnixTimestamp(now()) after common_processing_time;
alter table tsg_galaxy_v3.transaction_record on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;
alter table tsg_galaxy_v3.transaction_record on cluster ck_query add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;

alter table tsg_galaxy_v3.radius_record_local on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64 MATERIALIZED toUnixTimestamp(now()) after common_processing_time;
alter table tsg_galaxy_v3.radius_record on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;
alter table tsg_galaxy_v3.radius_record on cluster ck_query add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;

alter table tsg_galaxy_v3.voip_record_local on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64 MATERIALIZED toUnixTimestamp(now()) after common_processing_time;
alter table tsg_galaxy_v3.voip_record on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;
alter table tsg_galaxy_v3.voip_record on cluster ck_query add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;

alter table tsg_galaxy_v3.gtpc_record_local on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64 MATERIALIZED toUnixTimestamp(now()) after common_processing_time;
alter table tsg_galaxy_v3.gtpc_record on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;
alter table tsg_galaxy_v3.gtpc_record on cluster ck_query add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;

alter table tsg_galaxy_v3.security_event_local on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64 MATERIALIZED toUnixTimestamp(now()) after common_processing_time;
alter table tsg_galaxy_v3.security_event on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;
alter table tsg_galaxy_v3.security_event on cluster ck_query add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;

alter table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64 MATERIALIZED toUnixTimestamp(now()) after common_processing_time;
alter table tsg_galaxy_v3.proxy_event on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;
alter table tsg_galaxy_v3.proxy_event on cluster ck_query add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;

alter table tsg_galaxy_v3.sys_packet_capture_event_local on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64 MATERIALIZED toUnixTimestamp(now()) after common_processing_time;
alter table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_cluster add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;
alter table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_query add column IF NOT EXISTS common_insert_time Int64  after common_processing_time;





