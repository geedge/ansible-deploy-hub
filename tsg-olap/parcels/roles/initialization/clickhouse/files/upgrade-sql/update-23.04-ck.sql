set distributed_ddl_task_timeout = 180;


ALTER table tsg_galaxy_v3.dos_event_local on cluster ck_cluster add column IF NOT EXISTS profile_id UInt64 after log_id;
ALTER table tsg_galaxy_v3.dos_event on cluster ck_cluster add column IF NOT EXISTS profile_id UInt64 after log_id;
ALTER table tsg_galaxy_v3.dos_event on cluster ck_query add column IF NOT EXISTS profile_id UInt64 after log_id;