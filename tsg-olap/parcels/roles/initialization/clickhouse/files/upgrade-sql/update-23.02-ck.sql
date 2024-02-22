set distributed_ddl_task_timeout = 180;

ALTER table tsg_galaxy_v3.session_record_local on cluster ck_cluster add column IF NOT EXISTS http_request_body_key  String after common_flags;
ALTER table tsg_galaxy_v3.session_record on cluster ck_cluster add column IF NOT EXISTS http_request_body_key  String after common_flags;
ALTER table tsg_galaxy_v3.session_record on cluster ck_query add column IF NOT EXISTS http_request_body_key  String after common_flags;

ALTER table tsg_galaxy_v3.interim_session_record_local on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_query add column IF NOT EXISTS common_flags_identify_info  String after common_flags;



ALTER table tsg_galaxy_v3.transaction_record_local on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_query add column IF NOT EXISTS common_flags_identify_info  String after common_flags;



ALTER table tsg_galaxy_v3.radius_record_local on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_query add column IF NOT EXISTS common_flags_identify_info  String after common_flags;


ALTER table tsg_galaxy_v3.voip_record_local on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_query add column IF NOT EXISTS common_flags_identify_info  String after common_flags;


ALTER table tsg_galaxy_v3.gtpc_record_local on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_query add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
 

ALTER table tsg_galaxy_v3.security_event_local on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.security_event on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.security_event on cluster ck_query add column IF NOT EXISTS common_flags_identify_info  String after common_flags;


ALTER table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_query add column IF NOT EXISTS common_flags_identify_info  String after common_flags;



ALTER table tsg_galaxy_v3.sys_packet_capture_event_local on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_cluster add column IF NOT EXISTS common_flags_identify_info  String after common_flags;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_query add column IF NOT EXISTS common_flags_identify_info  String after common_flags;


ALTER table tsg_galaxy_v3.session_record_local on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.session_record on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.session_record on cluster ck_query add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;

ALTER table tsg_galaxy_v3.interim_session_record_local on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_query add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;



ALTER table tsg_galaxy_v3.transaction_record_local on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_query add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;



ALTER table tsg_galaxy_v3.radius_record_local on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_query add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;


ALTER table tsg_galaxy_v3.voip_record_local on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_query add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;


ALTER table tsg_galaxy_v3.gtpc_record_local on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_query add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
 

ALTER table tsg_galaxy_v3.security_event_local on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.security_event on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.security_event on cluster ck_query add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;


ALTER table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_query add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;


ALTER table tsg_galaxy_v3.sys_packet_capture_event_local on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_cluster add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_query add column IF NOT EXISTS common_shaping_rule_ids  Array(Int64) after common_user_region;

















